<%@ page import="Helpers.User" %>
<%@ page import="Helpers.ConnectDB" %>

<%
  User user = new User();
  ConnectDB db = new ConnectDB();

  int id = Integer.parseInt(request.getParameter("id"));
  db.deleteUser(id);
  System.out.println("Deleted Successfully");
%>