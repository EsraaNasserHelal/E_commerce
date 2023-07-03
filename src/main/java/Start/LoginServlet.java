package Start;

import Helpers.ConnectDB;
import Helpers.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns ={ "/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ConnectDB db = new ConnectDB();
        User user = new User();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        user = db.getUser(email, password);

        if (user == null) {
            response.getWriter().println("<h1 align='center'>Login Failed ❌</h1>");
            response.getWriter().println("<h2 style='color: #b30e0e;'  align='center'>Email or Password is wrong, Try Again...</h2>");
            request.getRequestDispatcher("Login.html").include(request, response);
        }else {
            String FullName = user.getFname()+" "+user.getLname();
            HttpSession httpSession = request.getSession(true);
            httpSession.setAttribute("Username", FullName);
            httpSession.setAttribute("Email", email);
            httpSession.setAttribute("Balance", user.getBalance());

            httpSession.setAttribute("IsLogin","Yes");

            if (user.getRole().equalsIgnoreCase("admin")) {
                response.sendRedirect("admin/Admin.jsp");
            }else {
                response.sendRedirect("index.jsp");
            }
        }


    }
}
