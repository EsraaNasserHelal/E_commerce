<%--
  Created by IntelliJ IDEA.
  User: DEWIDAR
  Date: 4/4/2023
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Helpers.ConnectDB" %>
<%@ page import="Helpers.Product" %>
<%@ page import="Helpers.Cart" %>
<%@ page import="Helpers.User" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="Start.AddToCartServlet" %>
<%@ page import="Start.*" %>
<%@page import="java.text.DecimalFormat"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%
    DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {

	ProductDao pDao = new ProductDao(ConnectDB.PostgreSql());
	cartProduct = pDao.getCartProducts(cart_list);
        int total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);
	request.setAttribute("cart_list", cart_list);
}
%>

<html>
<head>
    <title>My Cart</title>
    <%@include file="Includes/HeaderInclude.jsp" %>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-image: url("images/bg-2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .table tbody td{
            vertical-align: middle;
        }
        .btn-incre, .btn-decre{
            box-shadow: none;
            font-size: 25px;
        }

    </style>
</head>
<body>
<%@ include file="Navbar.jsp" %>
<div class="container my-3">
    <div class="d-flex py-3"><h3>Total Price: $ ${(total>0)?total:0} </h3> <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a></div>
    <table class="table table-light">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Price</th>
            <th scope="col">Buy Now</th>
            <th scope="col">Cancel</th>
        </tr>
        </thead>
        <tbody>
         <%
				if (cart_list != null) {
					for (Cart c : cartProduct) {
				%>
        <tr>
            <td><%=c.getName()%></td>
            <td><%=c.getCategory()%></td>
            <td><%=c.getPrice()%></td>
            <td>
                <form action="order_now" method="post" class="form-inline">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <a class="btn btn-sm btn-secondary " href="quantity-inc-dec?action=dec&_id=<%=c.get_id()%>"type="button" onclick="decreaseQuantity(1)">-</a>
                    </div>
                    <input type="text" class="form-control w-50" name="quantity" value="<%=c.getQuantity()%>" id="quantity">
                    <div class="input-group-append">
                        <a class="btn btn-sm btn-secondary"href="quantity-inc-dec?action=inc&_id=<%=c.get_id()%>" type="button" onclick="increaseQuantity(1)">+</a>
                    </div>
                    <button type="submit"class="btn btn-sm btn-primary">Buy</button>
                </div>
                </form>
            </td>
            <td><a href="remove_from_cart?_id=<%=c.get_id() %>" class="btn btn-sm btn-danger">Remove</a></td>
        </tr>
     <%
				}}%>
        </tbody>

<%@include file="Includes/FooterInclude.jsp" %>
</body>
</html>
