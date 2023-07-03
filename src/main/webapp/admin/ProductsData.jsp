<%@ page import="java.util.List" %>
<%@ page import="Helpers.Product" %>
<%@ page import="Helpers.MongoDB" %>
<%@ page import="java.util.Map" %><%-- Created by IntelliJ IDEA. User: DEWIDAR Date: 4/10/2023 Time: 8:44 AM
              To change this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <title>Users Data</title>
    <meta charset="UTF-8">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="css/side.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Dancing Script' rel='stylesheet'>
</head>

<body>
<div class="sidebar">
    <div class="logo-details">
        <!-- <i class='bx bxl-c-plus-plus icon'></i> -->
        <i class='bx bx-store icon'></i>
        <div class="logo_name">SHOPPY</div>
        <i class='bx bx-menu' id="btn"></i>
    </div>
    <ul class="nav-list">
        <li>
            <i class='bx bx-search'></i>
            <input type="text" placeholder="Search...">
            <span class="tooltip">Search</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-grid-alt'></i>
                <span class="links_name">Dashboard</span>
            </a>
            <span class="tooltip">Dashboard</span>
        </li>
        <li>
            <a href="UsersData.jsp">
                <i class='bx bx-user'></i>
                <span class="links_name">Users</span>
            </a>
            <span class="tooltip">Users</span>
        </li>
        <li>
            <a href="ProductsData.jsp">
                <i class='bx bx-chat'></i>
                <span class="links_name">Products</span>
            </a>
            <span class="tooltip">Products</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-pie-chart-alt-2'></i>
                <span class="links_name">Orders</span>
            </a>
            <span class="tooltip">Orders</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-folder'></i>
                <span class="links_name">File Manager</span>
            </a>
            <span class="tooltip">Files</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cart-alt'></i>
                <span class="links_name">Analytics</span>
            </a>
            <span class="tooltip">Analytics</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart'></i>
                <span class="links_name">Saved</span>
            </a>
            <span class="tooltip">Saved</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog'></i>
                <span class="links_name">Setting</span>
            </a>
            <span class="tooltip">Setting</span>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-log-out' id="log_out"></i>
                <span class="links_name">Sign Out</span>
            </a>
            <span class="tooltip">Sign Out</span>
        </li>
    </ul>
</div>

<div class="headerrr">
    <h1 style="font-family:  'Dancing Script','Poppins'; font-size: 47px;font-weight:600;">
        All Products Data From MongoDB </h1>
</div>

<!-- //------------BUTTONS--------------------- -->
<div class="buttonss" id="addproduct">
    <button class="btn btn-success " type="button" data-bs-toggle="modal" data-bs-target="#addProductModal">
        <i class='bx bx-user-plus'></i> Add Product
    </button>
</div>

<!-- ADD Modal ----------------------------------------------->
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabell">Add Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddProduct.jsp" method="post">
                    <div class="field">
                        <input type="text" name="id" required="">
                        <label>ID</label>
                    </div>
                    <div class="field">
                        <input type="text" name="name" required="">
                        <label>Product Name</label>
                    </div>
                    <div class="field">
                        <input type="text" name="description" required="">
                        <label>Description</label>
                    </div>
                    <div class="field">
                        <input type="number" class="balance" name="price" required="">
                        <label>Price</label>
                    </div>
                    <div class="field">
                        <input type="number" name="pieces" class="balance" required="">
                        <label>No. Of Pieces</label>
                    </div>
                    <div class="field">
                        <input type="text" name="category" required="">
                        <label>Category</label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-success">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Edit Modal--------------------------------------------------------->

<div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabeel">Edit Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="productform" method="post">
                    <div class="field">
                        <input type="text" name="id" required="">
                        <label>ID</label>
                    </div>
                    <div class="field">
                        <input type="text" name="name" required="">
                        <label>Product Name</label>
                    </div>
                    <div class="field">
                        <input type="text" name="description" required="">
                        <label>Description</label>
                    </div>
                    <div class="field">
                        <input type="number" class="balance" name="price" required="">
                        <label>Price</label>
                    </div>
                    <div class="field">
                        <input type="number" name="pieces" class="balance" required="">
                        <label>No. Of Pieces</label>
                    </div>
                    <div class="field">
                        <input type="text" name="category" required="">
                        <label>Category</label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button id="productEditDone" type="submit" class="btn btn-primary">Edit</button>
            </div>
        </div>
    </div>
</div>

<!--Delete Modal------------------------------------------------------->
<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">Product Will Be Deleted, Are You Sure?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button id="deleteProductdone" type="submit" class="btn btn-danger">Delete</button>
            </div>
        </div>
    </div>
</div>


<table id="example" class="table table-striped">

    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Pieces</th>
        <th>Category</th>
        <th>Review</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <% MongoDB db = new MongoDB();
        List<Product> products = db.getAllProducts("Products");
        for (Product product : products) {
    %>
    <tr>
        <td>
            <%=product.get_id()%>
        </td>
        <td>
            <%=product.getName()%>
        </td>
        <td>
            <%=product.getDescription()%>
        </td>
        <td>$<%=product.getPrice()%>
        </td>
        <td>
            <%=product.getNum()%>
        </td>
        <td>
            <%=product.getCategory()%>
        </td>
        <td>
            <%
                Map<String, String> review = product.getReview();
                for (Map.Entry<String, String> entry : review.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
            %>
            <%= key %> : <%= value %><br>
            <%
                }
            %>
        </td>
        <td>
            <button id="editproductbutton" type="button" class="btn btn-primary" data-description="<%=product.getDescription()%>" data-name="<%=product.getName()%>"
            data-category="<%=product.getCategory()%>" data-id="<%=product.get_id()%>" data-num="<%=product.getNum()%>" data-price="<%=product.getPrice()%>"> <i class='bx bx-edit'></i></button>
            <button id="deleteproductbutton" class="btn btn-danger" type="button"
                    data-id=<%=product.get_id()%> data-review=<%=product.getReview()%>
                            data-bs-toggle="modal" data-bs-target="#deleteProductModal">
                <i class='bx bxs-message-square-x'></i></button>
        </td>
    </tr>
    <% } %>
    </tbody>
    <tfoot>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Pieces</th>
        <th>Category</th>
        <th>Review</th>
        <th>Action</th>
    </tr>
    </tfoot>
</table>


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript"
        class="init">$(document).ready(function () {
    $('#example').DataTable();
});</script>
<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");
    sidebar.classList.toggle("open");
    closeBtn.addEventListener("click", () => {
        sidebar.classList.toggle("open");
        // menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        // menuBtnChange(); //calling the function(optional)
    });
</script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/crud.js"></script>


</body>

</html>