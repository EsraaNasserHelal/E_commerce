<%@ page import="Helpers.User" %>
<%@ page import="Helpers.ConnectDB" %>

<%
    User user = new User();
    ConnectDB db = new ConnectDB();
    user.setFname(request.getParameter("fname"));
    user.setLname(request.getParameter("lname"));
    user.setEmail(request.getParameter("email"));
    user.setPassword(request.getParameter("password"));
    user.setBalance(Integer.parseInt(request.getParameter("balance")));
    user.setPhone(request.getParameter("phone"));
    user.setRole(request.getParameter("role"));
    System.out.println(user);
    db.addUser(user);
    response.sendRedirect("UsersData.jsp");
%>
