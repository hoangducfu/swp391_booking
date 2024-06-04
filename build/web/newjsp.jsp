<%-- 
    Document   : newjsp
    Created on : Jun 4, 2024, 1:12:02 AM
    Author     : hoangduc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en" class="h-100">
	
<!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/my_organisation_dashboard_reports.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:27 GMT -->
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="Gambolthemes">
		<meta name="author" content="Gambolthemes">		
		<title>Barren - Simple Online Event Ticketing System</title>
		
		<!-- Favicon Icon -->
		<link rel="icon" type="image/png" href="images/fav.png">
		
		<!-- Stylesheets -->
		<link rel="preconnect" href="https://fonts.googleapis.com/">
		<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
		<link href='vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
		<link href="css/style.css" rel="stylesheet">
		<link href="css/vertical-responsive-menu.min.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<link href="css/night-mode.css" rel="stylesheet">
		
		<!-- Vendor Stylesheets -->
		<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
		<link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">	
		
	</head>

<body class="d-flex flex-column h-100">
	<!-- Header Start-->
	<header class="header">
		<div class="header-inner">		
			<nav class="navbar navbar-expand-lg bg-barren barren-head navbar fixed-top justify-content-sm-start pt-0 pb-0 ps-lg-0 pe-2">
				<div class="container-fluid ps-0">
					<button type="button" id="toggleMenu" class="toggle_menu">
						<i class="fa-solid fa-bars-staggered"></i>
					</button>
					<button id="collapse_menu" class="collapse_menu me-4">
						<i class="fa-solid fa-bars collapse_menu--icon "></i>
						<span class="collapse_menu--label"></span>
					</button>
					<button class="navbar-toggler order-3 ms-2 pe-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<span class="navbar-toggler-icon">
							<i class="fa-solid fa-bars"></i>
						</span>
					</button>
					<a class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 me-auto" href="index.html">
						<div class="res-main-logo">
							<img src="images/logo-icon.svg" alt="">
						</div>
						<div class="main-logo" id="logo">
							<img src="images/logo.svg" alt="">
							<img class="logo-inverse" src="images/dark-logo.svg" alt="">
						</div>
					</a>
					<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<div class="offcanvas-header">
							<div class="offcanvas-logo" id="offcanvasNavbarLabel">
								<img src="images/logo-icon.svg" alt="">
							</div>
							<button type="button" class="close-btn" data-bs-dismiss="offcanvas" aria-label="Close">
								<i class="fa-solid fa-xmark"></i>
							</button>
						</div>
						<div class="offcanvas-body">
							<div class="offcanvas-top-area">
								<div class="create-bg">
									<a href="create.html" class="offcanvas-create-btn">
										<i class="fa-solid fa-calendar-days"></i>
										<span>Create Event</span>
									</a>
								</div>
							</div>
							<ul class="navbar-nav justify-content-end flex-grow-1 pe_5">
								<li class="nav-item">
									<a class="nav-link" href="organiser_profile_view.html">
										<i class="fa-solid fa-right-left me-2"></i>My Home
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="explore_events.html">
										<i class="fa-solid fa-compass me-2"></i>Explore Events
									</a>
								</li>
							</ul>
						</div>
						<div class="offcanvas-footer">
							<div class="offcanvas-social">
								<h5>Follow Us</h5>
								<ul class="social-links">
									<li><a href="#" class="social-link"><i class="fab fa-facebook-square"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
									</li><li><a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
								</li></ul>
							</div>
						</div>
					</div>
					<div class="right-header order-2">
						<ul class="align-self-stretch">
							<li>
								<a href="create.html" class="create-btn btn-hover">
									<i class="fa-solid fa-calendar-days"></i>
									<span>Create Event</span>
								</a>
							</li>
							<li class="dropdown account-dropdown order-3">
								<a href="#" class="account-link" role="button" id="accountClick" data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
									<img src="images/profile-imgs/img-13.jpg" alt="">
									<i class="fas fa-caret-down arrow-icon"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-account dropdown-menu-end" aria-labelledby="accountClick">

									<li>
										<div class="dropdown-account-header">
											<div class="account-holder-avatar">
												<img src="images/profile-imgs/img-13.jpg" alt="">
											</div>
											<h5>John Doe</h5>
											<p>johndoe@example.com</p>
										</div>
										<h1>NGuyen Minh Hieu</h1>
										
									</li>


									<li class="profile-link">
										<a href="organiser_profile_view.html" class="link-item">My Profile</a>									
										<a href="sign_in.html" class="link-item">Sign Out</a>									
									</li>
								</ul>
							</li>
							<li>
								<div class="night_mode_switch__btn">
									<div id="night-mode" class="fas fa-moon fa-sun"></div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="overlay"></div>
		</div>
	</header>
	<!-- Header End-->
	<!-- Left Sidebar Start -->
	<nav class="vertical_nav">
		<div class="left_section menu_left" id="js-menu">
			<div class="left_section">
				<ul>
					<li class="menu--item">
						<a href="my_organisation_dashboard.html" class="menu--link" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-gauge menu--icon"></i>
							<span class="menu--label">Dashboard</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_events.html" class="menu--link" title="Events" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-calendar-days menu--icon"></i>
							<span class="menu--label">Events</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_promotion.html" class="menu--link" title="Promotion" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-rectangle-ad menu--icon"></i>
							<span class="menu--label">Promotion</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_contact_lists.html" class="menu--link" title="Contact List" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-regular fa-address-card menu--icon"></i>
							<span class="menu--label">Contact List</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_payout.html" class="menu--link" title="Payouts" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-credit-card menu--icon"></i>
							<span class="menu--label">Payouts</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_reports.html" class="menu--link active" title="Reports" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-chart-pie menu--icon"></i>
							<span class="menu--label">Reports</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_subscription.html" class="menu--link" title="Subscription" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-bahai menu--icon"></i>
							<span class="menu--label">Subscription</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_conversion_setup.html" class="menu--link" title="Conversion Setup" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-square-plus menu--icon"></i>
							<span class="menu--label">Conversion Setup</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_about.html" class="menu--link" title="About" data-bs-toggle="tooltip" data-bs-placement="right">
							<i class="fa-solid fa-circle-info menu--icon"></i>
							<span class="menu--label">About</span>
						</a>
					</li>
					<li class="menu--item">
						<a href="my_organisation_dashboard_my_team.html" class="menu--link team-lock" title="My Team" data-bs-toggle="tooltip" data-bs-placement="right"> 
							<i class="fa-solid fa-user-group menu--icon"></i>
							<span class="menu--label">My Team</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Left Sidebar End -->
	<!-- Body Start -->
	<div class="wrapper wrapper-body">
		<div class="dashboard-body">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="d-main-title">
							<h3><i class="fa-solid fa-chart-pie me-3"></i>Reports</h3>
						</div>
					</div>
					<div class="col-md-12">
						<div class="main-card mt-5">
							<div class="dashboard-wrap-content p-4">
								<div class="nav custom2-tabs btn-group" role="tablist">
									<button class="tab-link ms-0 active" data-bs-toggle="tab" data-bs-target="#orders-tab" type="button" role="tab" aria-controls="orders-tab" aria-selected="true">Orders (<span class="total_event_counter">1</span>)</button>
									<button class="tab-link" data-bs-toggle="tab" data-bs-target="#customers-tab" type="button" role="tab" aria-controls="customers-tab" aria-selected="false">Customers (<span class="total_event_counter">0</span>)</button>
									<button class="tab-link" data-bs-toggle="tab" data-bs-target="#tickets-tab" type="button" role="tab" aria-controls="tickets-tab" aria-selected="false">Tickets (<span class="total_event_counter">1</span>)</button>
									<button class="tab-link" data-bs-toggle="tab" data-bs-target="#payouts-tab" type="button" role="tab" aria-controls="payouts-tab" aria-selected="false">Payouts (<span class="total_event_counter">1</span>)</button>
								</div>
								<div class="d-md-flex flex-wrap align-items-center">
									<div class="dashboard-date-wrap mt-4">
										<div class="form-group">
											<div class="relative-input position-relative">
												<input class="form-control h_40" type="text" placeholder="Search by name" value="">
												<i class="uil uil-search"></i>
											</div>
										</div>
									</div>
									<div class="rs ms-auto mt-4 mt_r4">
										<a href="#" class="pe-4 w-100 ps-4 text-center co-main-btn h_40 d-inline-block"><i class="fa-solid fa-arrow-rotate-right me-3"></i>Refresh</a>
									</div>
								</div>
								<div class="main-form mt-4">
									<div class="row g-3">
										<div class="col-lg-3 col-md-6">
											<div class="form-group">
												<select class="selectpicker" data-size="5" data-live-search="true">
													<option value="all events" selected>All Events</option>																									
												</select>
											</div>
										</div>
										<div class="col-lg-3 col-md-6">
											<div class="form-group">
												<select class="selectpicker">
													<option value="Today">Today</option>																									
													<option value="Yesterday">Yesterday</option>																									
													<option value="Last 7 Days">Last 7 Days</option>																									
													<option value="Last 30 Days" selected>Last 30 Days</option>																									
													<option value="This Month">This Month</option>																									
													<option value="Last Month">Last Month</option>																																																	
													<option value="Custom Range">Custom Range</option>																																																	
												</select>
											</div>
										</div>
										<div class="col-lg-3 col-md-6">
											<div class="form-group">
												<select class="selectpicker">
													<option value="All Orders" selected>All Orders</option>																									
													<option value="Refunded">Refunded</option>																									
													<option value="Refund Rejected">Refund Rejected</option>																									
													<option value="Refund Requested">Refund Requested</option>																									
													<option value="Partially Refunded">Partially Refunded</option>																																																	
												</select>
											</div>
										</div>
										<div class="col-lg-3 col-md-6">
											<div class="form-group">
												<select class="selectpicker">
													<option value="all">All Orders</option>																									
													<option value="1">Active</option>																									
													<option value="0">Canceled</option>																																																		
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="event-list">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="orders-tab" role="tabpanel">
									<div class="table-card mt-4">
										<div class="main-table">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
															<th scope="col">ID</th>
															<th scope="col">Name</th>
															<th scope="col">Event Name</th>
															<th scope="col">Date</th>
															<th scope="col">Reference</th>
															<th scope="col">Status</th>
															<th scope="col">Total</th>
														</tr>
													</thead>
													<tbody>
														<tr>										
															<td>5291</td>	
															<td>Larry Paige</td>	
															<td><a href="#" target="_blank">Astrology on sunday event</a></td>	
															<td>04/22/2022</td>	
															<td>E1021100NA8711001</td>
															<td><span class="status-circle red-circle"></span>Canceled</td>
															<td>AUD $0.00</td>
														</tr>
														<tr>										
															<td>5290</td>	
															<td>John Cena</td>	
															<td><a href="#" target="_blank">Melbourne plant sale</a></td>	
															<td>04/22/2022</td>	
															<td>E1021100NA8711002</td>
															<td><span class="status-circle green-circle"></span>Paid</td>
															<td>AUD $0.00</td>
														</tr>
														<tr>										
															<td>5289</td>	
															<td>Gleen Smith</td>	
															<td><a href="#" target="_blank">Testing Events</a></td>	
															<td>04/21/2022</td>	
															<td>E1021100NA8711003</td>
															<td><span class="status-circle blue-circle"></span>Refunded</td>
															<td>AUD $0.00</td>
														</tr>
													</tbody>									
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="customers-tab" role="tabpanel">
									<div class="table-card mt-4">
										<div class="main-table">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
															<th scope="col">ID</th>
															<th scope="col">Name</th>
															<th scope="col">Email address</th>
															<th scope="col">Address</th>
														</tr>
													</thead>
													<tbody>
														<tr>										
															<td>2356</td>	
															<td>Larry Paige</td>	
															<td>larry@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
														<tr>										
															<td>2355</td>	
															<td>John Cena</td>	
															<td>johncena@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
														<tr>										
															<td>2354</td>	
															<td>Jassica William</td>	
															<td>jassica@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
														<tr>										
															<td>2353</td>	
															<td>Rock William</td>	
															<td>rockwilliam@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
														<tr>										
															<td>2352</td>	
															<td>Gleen Smith</td>	
															<td>gleensmith@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
														<tr>										
															<td>2351</td>	
															<td>John Doe</td>	
															<td>johndoe@example.com</td>	
															<td>140 St Kilda Rd, St Kilda, Victoria, Melbourne, Victoria, 3000, Australia</td>	
														</tr>
													</tbody>									
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tickets-tab" role="tabpanel">
									<div class="table-card mt-4">
										<div class="main-table">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
															<th scope="col">Order ID</th>
															<th scope="col">Reference ID</th>
															<th scope="col">Customer Name</th>
															<th scope="col">Email Address</th>
														</tr>
													</thead>
													<tbody>
														<tr>										
															<td>2356</td>	
															<td>F6ACCM-R76MTK-1434658508</td>	
															<td>Larry Paige</td>	
															<td>larry@example.com</td>
														</tr>
														<tr>										
															<td>2355</td>	
															<td>F6ACCM-R76MTK-1434658508</td>	
															<td>Gleen William</td>	
															<td>gleenwilliam@example.com</td>
														</tr>
														<tr>										
															<td>2354</td>	
															<td>F6ACCM-R76MTK-1434658508</td>	
															<td>Rock Smith</td>	
															<td>rocksmith@example.com</td>
														</tr>
														<tr>										
															<td>2353</td>	
															<td>F6ACCM-R76MTK-1434658508</td>	
															<td>John Cena</td>	
															<td>johncena@example.com</td>
														</tr>
													</tbody>									
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="payouts-tab" role="tabpanel">
									<div class="table-card mt-4">
										<div class="main-table">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
															<th scope="col">Remittance ID</th>
															<th scope="col">Remittance Date</th>
															<th scope="col">Date Paid</th>
															<th scope="col">Date</th>
															<th scope="col">Transaction ID</th>
															<th scope="col">Actions</th>
														</tr>
													</thead>
													<tbody>
														<tr>										
															<td>12475</td>	
															<td>28/1.04/2022</td>	
															<td>26/04/2022</td>	
															<td>22/04/2022</td>	
															<td>TXR21234123UX</td>	
															<td><a href="#" class="a-link">Download</a></td>																
														</tr>														
													</tbody>									
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body End -->
	

	<script src="js/vertical-responsive-menu.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/OwlCarousel/owl.carousel.js"></script>
	<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
	<script src="js/custom.js"></script>
	<script src="js/night-mode.js"></script>

</body>

<!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/my_organisation_dashboard_reports.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:27 GMT -->
</html>
