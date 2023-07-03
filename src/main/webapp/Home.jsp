<%--
  Created by IntelliJ IDEA.
  User: hesham
  Date: 4/14/23
  Time: 4:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Helpers.Product" %>
<%@ page import="Helpers.ConnectDB" %>
<%@ page import="Helpers.*" %>
<%@ page import="Start.AddToCartServlet" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%
    ProductDao pd = new ProductDao(ConnectDB.PostgreSql());
    List<Product> products = pd.getAllProducts();
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="author" href="#Hisham">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700;900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/main.css" />
<%--    <link rel="stylesheet" href="style.css" />--%>
    <title>Shopper</title>
  <style>
    body {
      background-image: url("images/bg-2.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
</head>
<body>
<%@ include file="Navbar.jsp" %>


<div id="home" class="home vh-100"><div id="arrivals" class="my-5">
    <div class="arrivals-title text-center py-5">
            <h2 class="fw-bold display-6">Latest Arrivals</h2>
        </div>
        <div class="container">
            <div class="row g-4">
                <%
                    if (!products.isEmpty()) {
                        for (Product p : products) {
                %>
                <div class="col-lg-3 col-md-6">
                    <div class="card h-100">
                        <div class="card-img overflow-hidden position-relative">
                            <img src="<%=p.getImage_path()%>" class="w-100" alt="" />
                            <div class="upper-icons position-absolute mt-5 me-3 top-0 end-0 d-flex flex-column">
                                <i class="fa-solid fa-heart"></i>
                                <i class="fa-solid fa-share"></i>
                                <a href="#" data-bs-toggle="modal" data-bs-target="#arrival1"><i class="fa-regular fa-eye"></i></a>
                            </div>
                            <div class="add-cart py-2 bg-add-color d-flex justify-content-center align-items-center text-white position-absolute bottom-0 start-0 end-0">
                                <a href="Add_ToCartServlet?_id=<%=p.get_id()%>" >
                                    <i class="fa-solid fa-cart-shopping me-2"></i>
                                    <h6>Add to cart</h6>
                                     <a
				class="btn btn-primary" href="order_now?quantity=1&_id=<%=p.get_id()%>">Buy Now</a>
                               
                            </div>
                        </div>
                        <div class="card-body text-center">
                            <span>Clothing, Men</span>
                            <div class="card-stars text-warning">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular text-secondary fa-star"></i>
                            </div>
                            <h6 class="pt-1 fw-bold"><%=p.getName()%></h6>
                            <h5 class="py-1 fw-bold">
                                $<%=p.getPrice() %>
                                <span class="text-decoration-line-through fw-bold h6 small text-secondary fs-6">$38.50</span>
                            </h5>
                            
                        </div>
                    </div>
                </div>
               <%
			}
			} else {
			out.println("There is no proucts");
			}
			%>
            </div>
        </div>
    </div>
</div>

</body>
</html>