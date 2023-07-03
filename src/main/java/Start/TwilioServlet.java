package Start;

import com.twilio.Twilio;

import com.twilio.rest.verify.v2.service.Verification;
import com.twilio.type.PhoneNumber;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "TwilioServlet", value = "/TwilioServlet")
public class TwilioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Twilio.init("ACfc90f0f308ecca6584756266e9beac4f", "b6f8248f9bec7bacfc94fb0b53a3a91c");

          // Get the phone number from the form submission
//        String phoneNumber = request.getParameter("phone_number");

        // Create a new phone number verification request
        Verification verification = Verification.creator("VA8af607ec80caa98cfc55db1e1d6d1f9b",  // Replace with your Twilio verify service SID
                String.valueOf(new PhoneNumber("+201063405352")), "sms").create();
    }
}
