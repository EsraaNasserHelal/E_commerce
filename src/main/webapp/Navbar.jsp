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
                    <a class="nav-link text-black" aria-current="page" href="Cart.jsp">
                        <i class="fa-solid fa-cart-shopping me-1 "></i>Cart<span class="badge badge-danger">${cart_list.size()}</span>
                    </a>
                    <a class="nav-link text-black" aria-current="page" href="#">
                        <i class="fa-solid fa-heart  me-1"></i>Wishlist
                    </a>
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
