<%--
  Created by IntelliJ IDEA.
  User: DEWIDAR
  Date: 3/23/2023
  Time: 11:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.twilio.Twilio" %>
<%@ page import="com.twilio.exception.ApiException" %>

<%@ page import="com.twilio.rest.verify.v2.service.Verification" %>
<%@ page import="com.twilio.rest.verify.v2.service.VerificationCheck" %>
<%@ page import="com.twilio.rest.verify.v2.service.VerificationCheckCreator" %>
<%@ page import="com.twilio.type.PhoneNumber" %>
<%@ page import="Helpers.User" %>
<%@ page import="Helpers.ConnectDB" %>

<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    Twilio.init("ACfc90f0f308ecca6584756266e9beac4f", "b6f8248f9bec7bacfc94fb0b53a3a91c");
    User user = (User) request.getSession().getAttribute("user");
    String phoneNumber = user.getPhone();
    ConnectDB db = new ConnectDB();

    String Code = request.getParameter("code");
    try {
        VerificationCheck verificationCheck = VerificationCheck.creator(
                        "VA8af607ec80caa98cfc55db1e1d6d1f9b")
                .setTo(phoneNumber)
                .setCode(Code)
                .create();

        if (verificationCheck.getStatus().equals("approved")) {
            session.setAttribute("verified", true);
            db.addUser(user);
            response.getWriter().println("<h1 align='center'>Registration Successful ✅</h1>");
            request.getRequestDispatcher("Login.html").include(request, response);
        }
    } catch (ApiException e) {

%>
<h1 align='center'>You Entered A Wrong Code, It Will Be Sent Again..</h1>
<%
        request.getRequestDispatcher("TwilioVerification.jsp").include(request, response);
    }
%>
</body>
</html>
