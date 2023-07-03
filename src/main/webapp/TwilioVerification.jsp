<%@ page import="com.twilio.Twilio" %>
<%@ page import="com.twilio.rest.verify.v2.service.Verification" %>
<%@ page import="com.twilio.type.PhoneNumber" %>
<%@ page import="com.twilio.rest.verify.v2.service.VerificationCheck" %>
<%@ page import="Helpers.User" %><%--
  Created by IntelliJ IDEA.
  User: DEWIDAR
  Date: 3/23/2023
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Verification</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        h1 {
            box-sizing: border-box;
            text-shadow: 0 0 6px red;
        }
    </style>
</head>
<body>
<%
    User user = (User) request.getSession().getAttribute("user");
    String phoneNumber = user.getPhone();
    System.out.println(phoneNumber);
    Twilio.init("ACfc90f0f308ecca6584756266e9beac4f", "b6f8248f9bec7bacfc94fb0b53a3a91c");
    Verification verification = Verification.creator(
            "VA8af607ec80caa98cfc55db1e1d6d1f9b",
            String.valueOf(new PhoneNumber(phoneNumber)), "sms").create();
%>

<div class="wrapper">
    <div class="title">Verification</div>
    <form action="CodeVerification.jsp" method="post">
        <div class="field">
            <input type="text" name="code" required>
            <label>Enter The Code</label>
        </div>
        <div class="field">
            <p align="center"># Verification Code Have Been Sent To <%=phoneNumber%>
            </p>
        </div>
        <div class="field">
            <input type="submit" value="Enter">
        </div>
    </form>
</div>


</body>
</html>
