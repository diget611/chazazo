<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>관리자 메인</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/dashmin/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/easing/easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/waypoints/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/dashmin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
</head>
<body>
	<!-- Sidebar Start -->
	<div class="container-xxl position-relative bg-white d-flex p-0">
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-light navbar-light">
				<a href="<%=request.getContextPath() %>/admin/main" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>CHAZAZO</h3>
				</a>
				<div class="navbar-nav w-100">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-th me-2"></i>관리</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="<%=request.getContextPath() %>/admin/member" class="dropdown-item">회원</a>
							<a href="<%=request.getContextPath() %>/admin/report" class="dropdown-item">신고</a>
							<a href="<%=request.getContextPath() %>/admin/reservation" class="dropdown-item">예약</a>
							<a href="<%=request.getContextPath() %>/admin/location" class="dropdown-item">지점</a>
							<a href="<%=request.getContextPath() %>/admin/vehicle" class="dropdown-item">차량</a>
							<a href="<%=request.getContextPath() %>/admin/coupon" class="dropdown-item">쿠폰</a>
							<a href="<%=request.getContextPath() %>/admin/notice" class="dropdown-item">공지</a>
							<a href="<%=request.getContextPath() %>/admin/inquiry" class="dropdown-item">문의</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>통계</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="<%=request.getContextPath() %>/admin/statistics" class="dropdown-item">1</a>
							<a href="#" class="dropdown-item">2</a>
							<a href="#" class="dropdown-item">3</a>
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
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
				</a>
				<a href="#" class="sidebar-toggler flex-shrink-0">
					<i class="fa fa-bars"></i>
				</a>
				<form class="d-none d-md-flex ms-4">
					<input class="form-control border-0" type="search" placeholder="Search">
				</form>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
							<i class="fa fa-envelope me-lg-2"></i>
							<span class="d-none d-lg-inline-flex">Message</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">
								<div class="d-flex align-items-center">
									<img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
									<div class="ms-2">
										<h6 class="fw-normal mb-0">Jhon send you a message</h6>
										<small>15 minutes ago</small>
									</div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
								</div>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<div class="d-flex align-items-center">
									<img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
									<div class="ms-2">
										<h6 class="fw-normal mb-0">Jhon send you a message</h6>
										<small>15 minutes ago</small>
									</div>
								</div>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item text-center">See all message</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
							<i class="fa fa-bell me-lg-2"></i>
							<span class="d-none d-lg-inline-flex">Notificatin</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Profile updated</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">New user added</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item">
								<h6 class="fw-normal mb-0">Password changed</h6>
								<small>15 minutes ago</small>
							</a>
							<hr class="dropdown-divider">
							<a href="#" class="dropdown-item text-center">See all notifications</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->
			<!-- Sale & Revenue Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
                    <div class="col-sm-6 col-xl-3">
						<div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- Sale & Revenue End --><!-- Sales Chart Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Worldwide Sales</h6>
								<a href="">Show All</a>
							</div>
							<canvas id="worldwide-sales"></canvas>
						</div>
					</div>
					<div class="col-sm-12 col-xl-6">
						<div class="bg-light text-center rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Salse & Revenue</h6>
								<a href="">Show All</a>
							</div>
							<canvas id="salse-revenue"></canvas>
						</div>
					</div>
				</div>
			</div>
            <!-- Sales Chart End -->
            <!-- Recent Sales Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">Recent Salse</h6>
						<a href="">Show All</a>
					</div>
					<div class="table-responsive">
						<table class="table text-start align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-dark">
									<th scope="col"><input class="form-check-input" type="checkbox"></th>
									<th scope="col">Date</th>
									<th scope="col">Invoice</th>
									<th scope="col">Customer</th>
									<th scope="col">Amount</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
                                <tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
            <!-- Recent Sales End -->
			<!-- Widgets Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="row g-4">
					<div class="col-sm-12 col-md-6 col-xl-4">
						<div class="h-100 bg-light rounded p-4">
							<div class="d-flex align-items-center justify-content-between mb-4">
								<h6 class="mb-0">Calender</h6>
								<a href="">Show All</a>
							</div>
							<div id="calender"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- Widgets End -->
			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-light rounded-top p-4">
					<div class="row">
						<div class="col-12 col-sm-6 text-center text-sm-start">
							&copy; <a href="#">Your Site Name</a>, All Right Reserved. 
						</div>
						<div class="col-12 col-sm-6 text-center text-sm-end">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a href="https://htmlcodex.com">HTML Codex</a>
							Distributed By <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
						</div>
					</div>
				</div>
			</div>
            <!-- Footer End -->
		</div>
		<!-- Content End -->
		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	</div>

<script src="<%=request.getContextPath()%>/resources/dashmin/js/main.js"></script>

</body>

</html>