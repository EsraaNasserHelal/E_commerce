<%--
  Created by IntelliJ IDEA.
  User: DEWIDAR
  Date: 4/4/2023
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Helpers.Product" %>
<%@ page import="Helpers.ProductCon" %>
<%@ page import="Helpers.*" %>
<%@ page import="Start.*" %>
<%@ page import="Start.AddToCartServlet" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="Dao.OrderDao" %>
<%@ page import="java.util.List" %>
<%@page import="java.text.DecimalFormat"%>

<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%DecimalFormat dcf = new DecimalFormat("#.##");
	request.setAttribute("dcf", dcf);
	User auth = (User) request.getSession().getAttribute("auth");
	List<Order> orders = null;
	if (auth != null) {
	    request.setAttribute("person", auth);
	    OrderDao orderDao  = new OrderDao(ProductCon.getConnection());
		orders = orderDao.userOrders(auth.getUid());
	}else{
		response.sendRedirect("Login.html");
	}
     ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<html>
<head>
    <title>Orders</title>
   
</head>
<body>


    
</body>
</html>
