<%@ page import="Helpers.ConnectDB" %>
<%@ page import="Helpers.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %><%-- Created by IntelliJ IDEA. User: DEWIDAR Date: 4/10/2023 Time:
                    8:44 AM To change this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

<head>
    <title>Users Data</title>
    <meta charset="UTF-8">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"> -->
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
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
        All Users Data From PostgreSQL </h1>
</div>

<!-- //------------BUTTONS--------------------- -->
<div class="buttonss">
    <button class="btn btn-success " type="button" data-bs-toggle="modal"
            data-bs-target="#exampleModal">
        <i class='bx bx-user-plus'></i> Add User
    </button>
</div>

<!-- ADD Modal ----------------------------------------------->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabell">Add User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddUser.jsp" method="post">
                    <div class="field">
                        <input type="text" name="fname" required="">
                        <label>First Name</label>
                    </div>
                    <div class="field">
                        <input type="text" name="lname" required="">
                        <label>Last Name</label>
                    </div>
                    <div class="field">
                        <input type="email" name="email" required="">
                        <label>Email Address</label>
                    </div>
                    <div class="field">
                        <input type="password" name="password" required="">
                        <label>Password</label>
                    </div>
                    <div class="field">
                        <input type="number" name="balance" class="balance" required="">
                        <label>Balance</label>
                    </div>
                    <div class="field">
                        <input type="tel" name="phone" placeholder="+20 1xx xxx xxxx"
                               required="">
                        <label>Phone Number</label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary"
                                data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-success">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Edit Modal--------------------------------------------------------->

<div class="modal fade" id="edit" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabeel">Edit User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="userform" method="post">
                    <div class="field">
                        <input id="id" type="number" class="balance" name="id" required="">
                        <label>ID</label>
                    </div>
                    <div class="field">
                        <input id="fname" type="text" name="fname" required="">
                        <label>First Name</label>
                    </div>
                    <div class="field">
                        <input id="lname" type="text" name="lname" required="">
                        <label>Last Name</label>
                    </div>
                    <div class="field">
                        <input id="email" type="email" name="email" required="">
                        <label>Email Address</label>
                    </div>
                    <div class="field">
                        <input id="password" type="password" name="password" required="">
                        <label>Password</label>
                    </div>
                    <div class="field">
                        <input id="balance" type="number" name="balance" class="balance"
                               required="">
                        <label>Balance</label>
                    </div>
                    <div class="field">
                        <input id="phone" type="tel" name="phone"
                               placeholder="+20 1xx xxx xxxx" required="">
                        <label>Phone Number</label>
                    </div>
                    <div class="field">
                        <input id="role" type="text" name="role" required="">
                        <label>Role</label>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                            data-bs-dismiss="modal">Close
                    </button>
                    <button type="submit" id="userEditDone"
                            class="btn btn-primary">Edit
                    </button>
                </div>
            </div>

        </div>
    </div>
</div>

<!--Delete Modal------------------------------------------------------->
<div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">User Will Be Deleted, Are You Sure?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">Close
                </button>
                <button id="done" type="submit" class="btn btn-danger">Delete</button>
            </div>
        </div>
    </div>
</div>

<!--DataTable------------------------------------------------------->

<table id="example" class="table table-striped">

    <thead>
    <tr>
        <th>ID</th>
        <th>FName</th>
        <th>LName</th>
        <th>Email</th>
        <th>Password</th>
        <th>Credit</th>
        <th>Phone</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <% ConnectDB db = new ConnectDB();
        List<User> users = db.getAllUsers();
        for (User user : users) {
    %>
    <tr>
        <td>
            <%=user.getId()%>
        </td>
        <td>
            <%=user.getFname()%>
        </td>
        <td>
            <%=user.getLname()%>
        </td>
        <td>
            <%=user.getEmail()%>
        </td>
        <td>
            <%=user.getPassword()%>
        </td>
        <td>$<%=user.getBalance()%>
        </td>
        <td>
            <%=user.getPhone()%>
        </td>
        <td>
            <%=user.getRole()%>
        </td>
        <td>
            <button id="edituserbutton" class="btn btn-primary " type="button"
                    data-bs-toggle="modal" data-id=<%=user.getId()%> data-fname="<%=user.getFname()%>"
                    data-lname="<%=user.getLname()%>" data-email="<%=user.getEmail()%>"
                    data-password="<%=user.getPassword()%>" data-balance=
                        <%=user.getBalance()%>
                            data-phone="<%=user.getPhone()%>" data-role="<%=user.getRole()%>"
            >
                <i class='bx bx-edit'></i></button>
            <button id="deleteuserbutton" class="btn btn-danger" type="button"
                    data-id=<%=user.getId()%>
                            data-bs-toggle="modal" data-bs-target="#delete">
                <i class='bx bxs-message-square-x'></i></button>
        </td>
    </tr>
    <% } %>
    </tbody>
    <tfoot>
    <tr>
        <th>ID</th>
        <th>FName</th>
        <th>LName</th>
        <th>Email</th>
        <th>Password</th>
        <th>Credit</th>
        <th>Phone</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
    </tfoot>
</table>


<%------------------------------SCRIPTS-------------------------%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script
        src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript" class="init">$(document).ready(function () {
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