<%-- Created by IntelliJ IDEA. User: DEWIDAR Date: 4/9/2023 Time: 7:42 AM To change this template use File | Settings |
    File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

<head>
    <title>Administrator</title>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="css/side.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">

    <link href="vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Style css -->
    <!-- <link href="css/style.css" rel="stylesheet">  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Dancing Script' rel='stylesheet'>
    <!-- <link rel="stylesheet" href="css/style1.css" /> -->

</head>

<body>

<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus icon'></i>
        <!-- <i class="bi bi-bag-heart-fill"></i> -->
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
            <a href="Login.html">
                <i class='bx bx-log-out' id="log_out"></i>
                <span class="links_name">Sign Out</span>
            </a>
            <span class="tooltip">Sign Out</span>
        </li>
    </ul>
</div>

<div class="headerrr">
    <h1 style="font-family:  'Dancing Script','Poppins'; font-size: 47px;font-weight:600;">
        Welcome Adminstrator In Your Dashboard</h1>
</div>


<div class="middle">
    <div class="white_box QA_section card_height_100">
        <div class="box_header m-0">
            <div class="main-title">
                <h3 class="m-0">Web Visitor and trafic</h3>
            </div>
        </div>
        <div id="
                     home-chart-03" style="height: 280px; position: relative;">
            <div style="width: 100%; height: 100%; position: relative; top: -0.199982px;">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" role="group"
                     style="width: 100%; height: 100%; overflow: visible;">
                    <desc>JavaScript chart by amCharts</desc>
                    <defs>
                        <clipPath id="id-133">
                            <rect width="731" height="280"></rect>
                        </clipPath>
                        <linearGradient id="gradient-id-156" x1="1%" x2="99%" y1="59%" y2="41%">
                            <stop stop-color="#474758" offset="0"></stop>
                            <stop stop-color="#474758" stop-opacity="1" offset="0.75"></stop>
                            <stop stop-color="#3cabff" stop-opacity="1" offset="0.755"></stop>
                        </linearGradient>
                        <clipPath id="id-165"></clipPath>
                        <filter id="filter-id-138" width="200%" height="200%" x="-50%" y="-50%">
                            <feGaussianBlur result="blurOut" in="SourceGraphic" stdDeviation="1.5">
                            </feGaussianBlur>
                            <feOffset result="offsetBlur" dx="1" dy="1"></feOffset>
                            <feFlood flood-color="#000000" flood-opacity="0.5"></feFlood>
                            <feComposite in2="offsetBlur" operator="in"></feComposite>
                            <feMerge>
                                <feMergeNode></feMergeNode>
                                <feMergeNode in="SourceGraphic"></feMergeNode>
                            </feMerge>
                        </filter>
                        <filter id="filter-id-153" width="120%" height="120%" x="-10%" y="-10%">
                            <feColorMatrix type="saturate" values="0"></feColorMatrix>
                        </filter>
                        <filter id="filter-id-170" width="200%" height="200%" x="-50%" y="-50%">
                            <feGaussianBlur result="blurOut" in="SourceGraphic" stdDeviation="1.5">
                            </feGaussianBlur>
                            <feOffset result="offsetBlur" dx="1" dy="1"></feOffset>
                            <feFlood flood-color="#000000" flood-opacity="0.5"></feFlood>
                            <feComposite in2="offsetBlur" operator="in"></feComposite>
                            <feMerge>
                                <feMergeNode></feMergeNode>
                                <feMergeNode in="SourceGraphic"></feMergeNode>
                            </feMerge>
                        </filter>
                    </defs>
                    <g>
                        <g fill="#ffffff" fill-opacity="0">
                            <rect width="731" height="280"></rect>
                        </g>
                        <g>
                            <g role="region" clip-path="url(&quot;#id-133&quot;)" opacity="1"
                               aria-describedby="id-109-description">
                                <g>
                                    <g>
                                        <g>
                                            <g>
                                                <g>
                                                    <g transform="translate(365.5,204.85)">
                                                        <g>
                                                            <g role="menu" opacity="1"
                                                               aria-describedby="id-160-description">
                                                                <g>
                                                                    <g clip-path="url(&quot;#id-165&quot;)">
                                                                        <g></g>
                                                                    </g>
                                                                    <g></g>
                                                                    <g>
                                                                        <g>
                                                                            <g stroke-opacity="1" role="menuitem"
                                                                               focusable="true" tabindex="0"
                                                                               id="id-216"
                                                                               style="touch-action: none; user-select: none; -webkit-user-drag: none;"
                                                                               fill="#089bab" stroke="#089bab">
                                                                                <g>
                                                                                    <g>
                                                                                        <path
                                                                                                d=" M-96.4,0  L-168.7,0  a168.7,168.7,0,0,1,116.8711,-160.5411 L-29.6165,-91.7378  a96.4,96.4,0,0,0,-66.7835,91.7378 L-96.4,0 ">
                                                                                        </path>
                                                                                    </g>
                                                                                    <g></g>
                                                                                </g>
                                                                            </g>
                                                                            <g stroke-opacity="1" role="menuitem"
                                                                               focusable="true" tabindex="0"
                                                                               id="id-250"
                                                                               style="touch-action: none; user-select: none; -webkit-user-drag: none;"
                                                                               fill="#2ca5b2" stroke="#2ca5b2">
                                                                                <g>
                                                                                    <g>
                                                                                        <path
                                                                                                d=" M-29.6165,-91.7378  L-51.8289,-160.5411  a168.7,168.7,0,0,1,151.1168,24.1534 L56.7359,-77.9359  a96.4,96.4,0,0,0,-86.3524,-13.8019 L-29.6165,-91.7378 ">
                                                                                        </path>
                                                                                    </g>
                                                                                    <g></g>
                                                                                </g>
                                                                            </g>
                                                                            <g stroke-opacity="1" role="menuitem"
                                                                               focusable="true" tabindex="0"
                                                                               id="id-283"
                                                                               style="touch-action: none; user-select: none; -webkit-user-drag: none;"
                                                                               fill="#faa264" stroke="#faa264">
                                                                                <g>
                                                                                    <g>
                                                                                        <path
                                                                                                d=" M56.7359,-77.9359  L99.2878,-136.3877  a168.7,168.7,0,0,1,61.1718,84.3069 L91.6912,-29.7605  a96.4,96.4,0,0,0,-34.9553,-48.1754 L56.7359,-77.9359 ">
                                                                                        </path>
                                                                                    </g>
                                                                                    <g></g>
                                                                                </g>
                                                                            </g>
                                                                            <g stroke-opacity="1" role="menuitem"
                                                                               focusable="true" tabindex="0"
                                                                               id="id-316"
                                                                               style="touch-action: none; user-select: none; -webkit-user-drag: none;"
                                                                               fill="#fcb07a" stroke="#fcb07a">
                                                                                <g>
                                                                                    <g>
                                                                                        <path
                                                                                                d=" M91.6912,-29.7605  L160.4596,-52.0808  a168.7,168.7,0,0,1,8.2404,52.0808 L96.4,0  a96.4,96.4,0,0,0,-4.7088,-29.7605 L91.6912,-29.7605 ">
                                                                                        </path>
                                                                                    </g>
                                                                                    <g></g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </g>
                                                                    <g>
                                                                        <g>
                                                                            <g fill-opacity="0" stroke-opacity="0.2"
                                                                               stroke="#000000" stroke-width="1">
                                                                                <polyline
                                                                                        points="-136.38774431989,-99.28783006135,-143.2071315358845,-104.2522215644175,-143.2071315358845,-104.2522215644175">
                                                                                </polyline>
                                                                            </g>
                                                                            <g fill-opacity="0" stroke-opacity="0.2"
                                                                               stroke="#000000" stroke-width="1">
                                                                                <polyline
                                                                                        points="26.625790274369997,-166.58558549261997,27.957079788088496,-174.91486476725098,27.957079788088496,-174.91486476725098">
                                                                                </polyline>
                                                                            </g>
                                                                            <g fill-opacity="0" stroke-opacity="0.2"
                                                                               stroke="#000000" stroke-width="1">
                                                                                <polyline
                                                                                        points="136.54338149088,-99.0736845588,143.370550565424,-104.02736878674,143.370550565424,-104.02736878674">
                                                                                </polyline>
                                                                            </g>
                                                                            <g fill-opacity="0" stroke-opacity="0.2"
                                                                               stroke="#000000" stroke-width="1">
                                                                                <polyline
                                                                                        points="166.62716228242,-26.364346993879998,174.958520396541,-27.682564343573997,174.958520396541,-27.682564343573997">
                                                                                </polyline>
                                                                            </g>
                                                                        </g>
                                                                    </g>
                                                                    <g>
                                                                        <g>
                                                                            <g fill="#000000"
                                                                               transform="translate(-173.524,-111.609)">
                                                                                <g transform="translate(-32.5,-7.5)"
                                                                                   style="user-select: none;">
                                                                                    <text x="0"
                                                                                          y="15.199999809265137"
                                                                                          dy="-4.104">
                                                                                        <tspan>USA: 40.1%
                                                                                        </tspan>
                                                                                    </text>
                                                                                </g>
                                                                            </g>
                                                                            <g fill="#000000"
                                                                               transform="translate(34.27,-187.25799999999998)">
                                                                                <g transform="translate(-35,-7.5)"
                                                                                   style="user-select: none;">
                                                                                    <text x="0"
                                                                                          y="15.199999809265137"
                                                                                          dy="-4.104">
                                                                                        <tspan>India: 30.0%
                                                                                        </tspan>
                                                                                    </text>
                                                                                </g>
                                                                            </g>
                                                                            <g fill="#000000"
                                                                               transform="translate(185.054,-111.368)">
                                                                                <g transform="translate(-46.5,-7.5)"
                                                                                   style="user-select: none;">
                                                                                    <text x="0"
                                                                                          y="15.199999809265137"
                                                                                          dy="-4.104">
                                                                                        <tspan>Australia:
                                                                                            20.0%
                                                                                        </tspan>
                                                                                    </text>
                                                                                </g>
                                                                            </g>
                                                                            <g fill="#000000"
                                                                               transform="translate(215.455,-29.636)">
                                                                                <g transform="translate(-36,-7.5)"
                                                                                   style="user-select: none;">
                                                                                    <text x="0"
                                                                                          y="15.199999809265137"
                                                                                          dy="-4.104">
                                                                                        <tspan>Brazil: 10.0%
                                                                                        </tspan>
                                                                                    </text>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <desc id="id-160-description">Series</desc>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g transform="translate(365.5,238)">
                                                        <g>
                                                            <g>
                                                                <g></g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </g>
                                            <g role="group" aria-describedby="id-182-description"
                                               transform="translate(0,241)">
                                                <g>
                                                    <g focusable="true" tabindex="0" role="switch"
                                                       aria-controls="id-216" aria-labelledby="id-216"
                                                       aria-checked="true" style="cursor: pointer;"
                                                       transform="translate(92,0)">
                                                        <g fill="#ffffff" fill-opacity="0">
                                                            <rect width="113" height="39"></rect>
                                                        </g>
                                                        <g transform="translate(0,8)">
                                                            <g style="pointer-events: none;">
                                                                <g fill="#ffffff" fill-opacity="0"
                                                                   stroke-opacity="0">
                                                                    <rect width="23" height="23"></rect>
                                                                </g>
                                                                <g>
                                                                    <g stroke-opacity="1" fill="#089bab"
                                                                       stroke="#089bab">
                                                                        <path
                                                                                d="M3,0 L20,0 a3,3 0 0 1 3,3 L23,20 a3,3 0 0 1 -3,3 L3,23 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3 Z">
                                                                        </path>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(28,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="0" y="15.199999809265137"
                                                                          overflow="hidden" dy="-4.104">
                                                                        <tspan>USA</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(58,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="50" y="15.199999809265137" dy="-4.104"
                                                                          text-anchor="end">
                                                                        <tspan>40.1%</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g focusable="true" tabindex="0" role="switch"
                                                       aria-controls="id-250" aria-labelledby="id-250"
                                                       aria-checked="true" style="cursor: pointer;"
                                                       transform="translate(225,0)">
                                                        <g fill="#ffffff" fill-opacity="0">
                                                            <rect width="116" height="39"></rect>
                                                        </g>
                                                        <g transform="translate(0,8)">
                                                            <g style="pointer-events: none;">
                                                                <g fill="#ffffff" fill-opacity="0"
                                                                   stroke-opacity="0">
                                                                    <rect width="23" height="23"></rect>
                                                                </g>
                                                                <g>
                                                                    <g stroke-opacity="1" fill="#2ca5b2"
                                                                       stroke="#2ca5b2">
                                                                        <path
                                                                                d="M3,0 L20,0 a3,3 0 0 1 3,3 L23,20 a3,3 0 0 1 -3,3 L3,23 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3 Z">
                                                                        </path>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(28,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="0" y="15.199999809265137"
                                                                          overflow="hidden" dy="-4.104">
                                                                        <tspan>India</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(61,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="50" y="15.199999809265137" dy="-4.104"
                                                                          text-anchor="end">
                                                                        <tspan>30.0%</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g focusable="true" tabindex="0" role="switch"
                                                       aria-controls="id-283" aria-labelledby="id-283"
                                                       aria-checked="true" style="cursor: pointer;"
                                                       transform="translate(361,0)">
                                                        <g fill="#ffffff" fill-opacity="0">
                                                            <rect width="138" height="39"></rect>
                                                        </g>
                                                        <g transform="translate(0,8)">
                                                            <g style="pointer-events: none;">
                                                                <g fill="#ffffff" fill-opacity="0"
                                                                   stroke-opacity="0">
                                                                    <rect width="23" height="23"></rect>
                                                                </g>
                                                                <g>
                                                                    <g stroke-opacity="1" fill="#faa264"
                                                                       stroke="#faa264">
                                                                        <path
                                                                                d="M3,0 L20,0 a3,3 0 0 1 3,3 L23,20 a3,3 0 0 1 -3,3 L3,23 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3 Z">
                                                                        </path>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(28,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="0" y="15.199999809265137"
                                                                          overflow="hidden" dy="-4.104">
                                                                        <tspan>Australia</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(83,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="50" y="15.199999809265137" dy="-4.104"
                                                                          text-anchor="end">
                                                                        <tspan>20.0%</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g focusable="true" tabindex="0" role="switch"
                                                       aria-controls="id-316" aria-labelledby="id-316"
                                                       aria-checked="true" style="cursor: pointer;"
                                                       transform="translate(519,0)">
                                                        <g fill="#ffffff" fill-opacity="0">
                                                            <rect width="120" height="39"></rect>
                                                        </g>
                                                        <g transform="translate(0,8)">
                                                            <g style="pointer-events: none;">
                                                                <g fill="#ffffff" fill-opacity="0"
                                                                   stroke-opacity="0">
                                                                    <rect width="23" height="23"></rect>
                                                                </g>
                                                                <g>
                                                                    <g stroke-opacity="1" fill="#fcb07a"
                                                                       stroke="#fcb07a">
                                                                        <path
                                                                                d="M3,0 L20,0 a3,3 0 0 1 3,3 L23,20 a3,3 0 0 1 -3,3 L3,23 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3 Z">
                                                                        </path>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(28,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="0" y="15.199999809265137"
                                                                          overflow="hidden" dy="-4.104">
                                                                        <tspan>Brazil</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                            <g fill="#000000" style="pointer-events: none;"
                                                               transform="translate(65,4)">
                                                                <g style="user-select: none;">
                                                                    <text x="50" y="15.199999809265137" dy="-4.104"
                                                                          text-anchor="end">
                                                                        <tspan>10.0%</tspan>
                                                                    </text>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                                <desc id="id-182-description">Legend</desc>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                                <desc id="id-109-description">Chart</desc>
                            </g>
                            <g>
                                <g>
                                    <g role="tooltip" visibility="hidden" opacity="0">
                                        <g fill="#ffffff" fill-opacity="0.9" stroke-width="1" stroke-opacity="1"
                                           stroke="#ffffff" filter="url(&quot;#filter-id-138&quot;)"
                                           style="pointer-events: none;" transform="translate(0,6)">
                                            <path
                                                    d="M3,0 L3,0 L0,-6 L13,0 L21,0 a3,3 0 0 1 3,3 L24,8 a3,3 0 0 1 -3,3 L3,11 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3">
                                            </path>
                                        </g>
                                        <g>
                                            <g fill="#ffffff" style="pointer-events: none;"
                                               transform="translate(12,6)">
                                                <g transform="translate(0,7)" display="none"></g>
                                            </g>
                                        </g>
                                    </g>
                                    <g visibility="hidden" style="pointer-events: none;" display="none">
                                        <g fill="#ffffff" opacity="1">
                                            <rect width="731" height="280"></rect>
                                        </g>
                                        <g>
                                            <g transform="translate(365.5,140)">
                                                <g>
                                                    <g stroke-opacity="1" fill="#f3f3f3" fill-opacity="0.8">
                                                        <g>
                                                            <g>
                                                                <path
                                                                        d=" M53,0  a53,53,0,0,1,-106,0 a53,53,0,0,1,106,0 M42,0  a42,42,0,0,0,-84,0 a42,42,0,0,0,84,0 L42,0 ">
                                                                </path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g stroke-opacity="1" fill="#000000" fill-opacity="0.2">
                                                        <g>
                                                            <g>
                                                                <path
                                                                        d=" M50,0  a50,50,0,0,1,-100,0 a50,50,0,0,1,100,0 M45,0  a45,45,0,0,0,-90,0 a45,45,0,0,0,90,0 L45,0 ">
                                                                </path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g fill="#000000" fill-opacity="0.4">
                                                        <g transform="translate(-15.5,-7.5)"
                                                           style="user-select: none;">
                                                            <text x="0" y="15.199999809265137" dy="-4.104">
                                                                <tspan>100%</tspan>
                                                            </text>
                                                        </g>
                                                    </g>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g opacity="0.3" aria-labelledby="id-153-title"
                                       filter="url(&quot;#filter-id-153&quot;)" style="cursor: pointer;"
                                       transform="translate(0,259)">
                                        <g fill="#ffffff" opacity="0">
                                            <rect width="66" height="21"></rect>
                                        </g>
                                        <g>
                                            <g shape-rendering="auto" fill="none" stroke-opacity="1"
                                               stroke-width="1.7999999999999998" stroke="#3cabff">
                                                <path
                                                        d=" M15,15  C17.4001,15 22.7998,15.0001 27,15 C31.2002,14.9999 33.2999,6 36,6 C38.7001,6 38.6999,10.5 40.5,10.5 C42.3001,10.5 42.2999,6 45,6 C47.7001,6 50.9999,14.9999 54,15 C57.0002,15.0001 58.7999,15 60,15">
                                                </path>
                                            </g>
                                            <g shape-rendering="auto" fill="none" stroke-opacity="1"
                                               stroke-width="1.7999999999999998"
                                               stroke="url(&quot;#gradient-id-156&quot;)">
                                                <path
                                                        d=" M6,15  C8.2501,15 9.7498,15.0001 15,15 C20.2502,14.9999 20.7748,3.6 27,3.6 C33.2252,3.6 33.8998,14.9999 39.9,15 C45.9002,15.0001 45.9748,15 51,15 C56.0252,15 57.7499,15 60,15">
                                                </path>
                                            </g>
                                        </g>
                                        <title id="id-153-title">Chart created using amCharts library
                                        </title>
                                    </g>
                                    <g role="tooltip" visibility="hidden" opacity="0">
                                        <g fill="#ffffff" fill-opacity="0.9" stroke-width="1" stroke-opacity="1"
                                           stroke="#ffffff" filter="url(&quot;#filter-id-170&quot;)"
                                           style="pointer-events: none;" transform="translate(0,6)">
                                            <path
                                                    d="M3,0 L3,0 L0,-6 L13,0 L21,0 a3,3 0 0 1 3,3 L24,8 a3,3 0 0 1 -3,3 L3,11 a3,3 0 0 1 -3,-3 L0,3 a3,3 0 0 1 3,-3">
                                            </path>
                                        </g>
                                        <g>
                                            <g fill="#ffffff" style="pointer-events: none;"
                                               transform="translate(12,6)">
                                                <g transform="translate(0,7)" display="none"></g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="single_crm">
                <div class="crm_head d-flex align-items-center justify-content-between">
                    <div class="thumb">
                        <img src="images/crm/businessman.svg" alt="">
                    </div>
                    <i class="fas fa-ellipsis-h f_s_11 white_text"></i>
                </div>
                <div class="crm_body">
                    <h4>2455</h4>
                    <p>User Registrations</p>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="single_crm ">
                <div class="crm_head crm_bg_1 d-flex align-items-center justify-content-between">
                    <div class="thumb">
                        <img src="images/crm/customer.svg" alt="">
                    </div>
                    <i class="fas fa-ellipsis-h f_s_11 white_text"></i>
                </div>
                <div class="crm_body">
                    <h4>2455</h4>
                    <p>Active Users.....</p>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="single_crm">
                <div class="crm_head crm_bg_2 d-flex align-items-center justify-content-between">
                    <div class="thumb">
                        <img src="images/crm/infographic.svg" alt="">
                    </div>
                    <i class="fas fa-ellipsis-h f_s_11 white_text"></i>
                </div>
                <div class="crm_body">
                    <h4>2455</h4>
                    <p>Sold Products.....</p>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="single_crm">
                <div class="crm_head crm_bg_3 d-flex align-items-center justify-content-between">
                    <div class="thumb">
                        <img src="images/crm/sqr.svg" alt="">
                    </div>
                    <i class="fas fa-ellipsis-h f_s_11 white_text"></i>
                </div>
                <div class="crm_body">
                    <h4>2455</h4>
                    <p>No. Of Orders.....</p>
                </div>
            </div>
        </div>
    </div>


</div>


<div class="social">
    <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"><i
            class="fab fa-facebook-f"></i></a>


    <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i
            class="fab fa-twitter"></i></a>


    <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i
            class="fab fa-google"></i></a>
    <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i
            class="fab fa-linkedin-in"></i></a>
</div>


<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");
    sidebar.classList.toggle("open");
    closeBtn.addEventListener("click", () => {
        sidebar.classList.toggle("open");
        menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        menuBtnChange(); //calling the function(optional)
    });
</script>


</body>

</html>