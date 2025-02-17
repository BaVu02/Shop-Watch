<%-- 
    Document   : admin
    Created on : Mar 8, 2024, 10:47:35 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Setting</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
            rel="stylesheet"
            />

        <!-- Icon Font Stylesheet -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
            />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet"
            />

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />

        <link href="css/adminHome.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container-fluid position-relative bg-white d-flex p-0">

            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="adminHome" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary">DASHBOARD</h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <img class="rounded-circle" src="image/snapedit_1707235130251.png" alt="" style="width: 40px; height: 40px;">
                            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0">${user.full_name}</h6>
                            <span>Admin</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">
                        <a href="adminHome" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                        <a href="adminTable" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Tables</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="login" class="dropdown-item">Login</a>
                                <a href="adminSignUp" class="dropdown-item">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                    <a href="admin" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                    </a>
                    <div class="navbar-nav align-items-center ms-auto">

                        <div class="nav-item dropdown">
                            <a href="admin" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="image/snapedit_1707235130251.png" alt="" style="width: 40px; height: 40px;">
                                <span class="d-none d-lg-inline-flex">${user.full_name}</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="adminSetting" class="dropdown-item">Settings</a>
                                <a href="logout" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                    </div>
                </nav>


                <div class="container-fluid pt-4 px-4">

                    <div class="row">
                        <div class="row justify-content-center">

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h1 style="text-align: center">My Profile</h1>
                                        <form action="adminSetting" method="post">
                                            <div class="row mb-3" hidden>
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Full Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" class="form-control" name="userid" value="${user.user_id}" />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">User Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" class="form-control" name="username" value="${user.username}"  readonly />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Full Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" class="form-control" name="fullname" value="${user.full_name}" />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Email</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        value="${user.email}"
                                                        name="email"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Phone</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        value="${user.phone_number}"
                                                        name="phone"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Address</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        value="${user.address}"
                                                        name="address"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-sm-3"></div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input
                                                        type="submit"
                                                        class="btn btn-primary px-4"
                                                        value="Save Changes"
                                                        />
                                                </div>
                                                <c:set value="${requestScope.noti}" var="c"/>
                                                <p style="color: red">${c}</p>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h1 style="text-align: center">Change Password</h1>
                                        <form action="adminSetting" method="post">

                                            <div class="row mb-3">
                                                <div class="col-sm-4">
                                                    <h6 class="mb-0">Old Password</h6>
                                                </div>
                                                <div class="col-sm-8 text-secondary">
                                                    <input type="password" class="form-control" name="oldpass" value="" />
                                                </div>
                                                <c:set value="${requestScope.errorOld}" var="c"/>
                                                <p style="color: red">${c}</p>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-4">
                                                    <h6 class="mb-0">New Password</h6>
                                                </div>
                                                <div class="col-sm-8 text-secondary">
                                                    <input
                                                        type="password"
                                                        class="form-control"
                                                        value=""
                                                        name="newpass"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="col-sm-4">
                                                    <h6 class="mb-0">Repeat Password</h6>
                                                </div>
                                                <div class="col-sm-8 text-secondary">
                                                    <input
                                                        type="password"
                                                        class="form-control"
                                                        value=""
                                                        name="repass"
                                                        />
                                                </div>
                                                <c:set value="${requestScope.errorRe}" var="c"/>
                                                <p style="color: red">${c}</p>
                                            </div>


                                            <div class="row">
                                                <div class="col-sm-4"></div>
                                                <div class="col-sm-8 text-secondary">
                                                    <input
                                                        type="submit"
                                                        class="btn btn-primary px-4"
                                                        value="Save Changes"
                                                        />
                                                    <c:set value="${requestScope.success}" var="c"/>
                                                    <p style="color: red">${c}</p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="lib/chart/chart.min.js"></script>
                <script src="lib/easing/easing.min.js"></script>
                <script src="lib/waypoints/waypoints.min.js"></script>
                <script src="lib/owlcarousel/owl.carousel.min.js"></script>
                <script src="lib/tempusdominus/js/moment.min.js"></script>
                <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
                <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
                </body>
                </html>
