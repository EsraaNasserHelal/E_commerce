<%--
  Created by IntelliJ IDEA.
  User: DEWIDAR
  Date: 4/4/2023
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="Includes/HeaderInclude.jsp"%>
</head>
<body>
<!--Home Start-->
<div id="home" class="home vh-100">
    <!--Navbar Start-->
    <nav class="navbar navbar-expand-lg nav-bg fixed-top shadow">
        <div class="container">
            <a class="navbar-brand logo-font d-flex align-items-center" href="#">
                <i class="fa-solid fa-bag-shopping fa-xl me-2 mb-1"></i>
                <h2 class="d-inline m-0">Shopper</h2>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="d-lg-flex justify-content-lg-around text-center text-lg-start w-100">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active text-black" aria-current="page" href="Home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-black" aria-current="page" href="#arrivals">Arrivals</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-black" aria-current="page" href="#categories">Categories</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-black" aria-current="page" href="#best-sellers">Best Sellers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-black" aria-current="page" href="#blog">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-black" aria-current="page" href="#contact">Contact Us</a>
                        </li>
                    </ul>
                    <div class="nav-icon my-4 my-lg-0 d-flex align-items-center justify-content-center">


                        <a class="nav-link text-black" aria-current="page" href="Cart.jsp"> <i
                                class="fa-solid fa-cart-shopping me-1 "></i>Cart<span class="badge badge-danger">${cart_list.size()}</span></a>

                        <a class="nav-link text-black" aria-current="page" href="Orders.jsp"> <i
                                class="fa-solid fa-heart  me-1"></i>orders</a>

                    </div>
                    <a class=" ">
                        <button class="nav-btn bg-black text-white py-2 px-3 border-0"
                                onclick="location.href='Login.html'">
                            Login / Register
                        </button>

                    </a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Navbar Modal -->
    <div class="modal fade modal-xl" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 p-0">
                            <div class="sign-img">
                                <img src="images/pexels-andrea-piacquadio-3760042.jpg" class="w-100" alt=""/>
                            </div>
                        </div>
                        <div class="col-md-6 py-4">
                            <div class="sign-form px-4">
                                <div class="sign-head d-flex justify-content-between">
                                    <h2 class="pb-3">Winter Is Coming</h2>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <p class="pb-4">
                                    Fell free to contact us and we will get back to you as
                                    soon as possible.
                                </p>

                                <div class="container">
                                    <div class="row gy-4">
                                        <div class="col-md-6">
                                            <label for="fn" class="form-label">Name</label>
                                            <input type="text" class="form-control" id="fn" placeholder="Hisham"/>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="Password" class="form-label">Password</label>
                                            <input type="password" class="form-control" id="Password"/>
                                        </div>
                                        <div class="col-md-12">
                                            <label for="email" class="form-label">E-mail</label>
                                            <input type="email" class="form-control" id="email"
                                                   placeholder="Hishamrabea1907@gmail.com"/>
                                        </div>
                                        <div class="col-md-12">
                                            <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1"
                                                      rows="3"></textarea>
                                        </div>
                                    </div>
                                    <div class="main-btn w-100 text-center">
                                        <button class="bg-black text-white fw-bold py-3 px-4 border-0 mt-3">
                                            Submit
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="homeCarousel" class="carousel slide h-100" data-bs-ride="carousel">
        <div class="carousel-inner h-100">
            <div class="carousel-item active h-100 bg-img1" data-bs-interval="10000">
                <div class="layer h-100 d-flex align-items-center justify-content-center">
                    <div class="home-caption text-center text-white">
                        <h3 class="fw-bold">10% OFF YOUR FIRST ORDER</h3>
                        <h1 class="display-3 py-3">Best Brand in the world</h1>
                        <a href="Home.jsp">
                            <button class="home-btn py-3 px-4 border-0 fw-bold">
                                Shop Now
                            </button>
                        </a>

                    </div>
                </div>
            </div>
            <div class="carousel-item h-100 bg-img2" data-bs-interval="10000">
                <div class="layer h-100 d-flex align-items-center justify-content-center">
                    <div class="home-caption text-center text-white">
                        <h3 class="fw-bold">DON'T MISS YOUR CHANCE</h3>
                        <h1 class="display-3 py-3">New Season Collection</h1>
                        <button class="home-btn py-3 px-4 border-0 fw-bold">
                            Shop Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev ms-3" type="button" data-bs-target="#homeCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next me-3" type="button" data-bs-target="#homeCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<%@include file="Footer.jsp"%>

<%@include file="Includes/FooterInclude.jsp"%>
</body>
</html>
