<%@ page import="Helpers.MongoDB" %>

<%
  MongoDB db = new MongoDB();
  int id = Integer.parseInt(request.getParameter("id"));
  db.deleteProductById(id);
%>
