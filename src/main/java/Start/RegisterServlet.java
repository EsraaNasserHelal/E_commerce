package Start;

import Helpers.ConnectDB;
import Helpers.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import java.io.IOException;
import java.sql.ResultSet;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        User user = new User();
        ConnectDB db = new ConnectDB();
        user.setFname(request.getParameter("fname"));
        user.setLname(request.getParameter("lname"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setBalance(Integer.parseInt(request.getParameter("balance")));
        user.setPhone(request.getParameter("phone"));

//        int result = db.addUser(user);
        response.setContentType("text/html");
        if (!db.emailExistance(request.getParameter("email"))) {
            request.getSession().setAttribute("user", user);
            request.getRequestDispatcher("TwilioVerification.jsp").include(request, response);
        } else {
            response.getWriter().println("<h2  align='center'>Registration Failed ❌</h2>");
            response.getWriter().println("<h3  align='center'>This Email Already Existed, Please Try Again..</h3>");
            request.getRequestDispatcher("Register.html").include(request, response);
        }

    }

}
