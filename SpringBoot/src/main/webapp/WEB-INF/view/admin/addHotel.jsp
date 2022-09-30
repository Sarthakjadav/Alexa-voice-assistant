<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>AVAHM | ${pageHader}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/AVAHM_Logo2.png">

<!-- Bootstrap css -->
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!-- Plugins css -->
<link href="<%=request.getContextPath()%>/adminResources/css/spectrum.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=request.getContextPath()%>/adminResources/css/flatpickr.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap-clockpicker.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap-datepicker.min.css"
	rel="stylesheet" type="text/css" />

<!-- App css -->
<link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet"
	type="text/css" id="app-style" />
<!-- icons -->
<link href="<%=request.getContextPath()%>/adminResources/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<!-- Head js -->
<script src="<%=request.getContextPath()%>/adminResources/js/head.js"></script>

</head>

<!-- body start -->
<body data-layout-mode="default" data-theme="light"
	data-layout-width="fluid" data-topbar-color="dark"
	data-menu-position="fixed" data-leftbar-color="light"
	data-leftbar-size='default' data-sidebar-user='false'>

	<!-- Begin page -->
	<div id="wrapper">


		<!-- Topbar Start -->


		<jsp:include page="header.jsp"></jsp:include>


		<!-- end Topbar -->

		<!-- ========== Left Sidebar Start ========== -->


		<jsp:include page="menu.jsp"></jsp:include>


		<!-- Left Sidebar End -->

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Home</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Manage Hotel</a></li>
										<li class="breadcrumb-item active">${pageHader}</li>
									</ol>
								</div>
								<h4 class="page-title">${pageHader}</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">


									<f:form action="saveHotel" method="post"
										modelAttribute="HotelVO">
										<div class="row">
											<div class="col-md-6 mb-3">
												<f:input type="text" class="form-control" path="hotelName"
													placeholder="Hotel Name" id="fullname" required="required" />
											</div>

											<div class="col-md-6">
												<f:select id="heard" class="form-select"
													path="hotelCategory" required="required">
													<option value="none" selected="selected"
														disabled="disabled">Select Category</option>
														<%-- <h:if test="${hotelCategory eq 'onestar'}"></h:if> --%>
													<f:option value="onestar">1 Star</f:option>
													<f:option value="twostar">2 Star</f:option>
													<f:option value="threetar">3 Star</f:option>
													<f:option value="fourstar">4 Star</f:option>
													<f:option value="fivestar">5 Star</f:option>

												</f:select>
											</div>

											<div class="col-md-12 mb-3">

												<label class="form-label">Basic Facilities:</label>
												<div class="row ms-1" >
													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby1"
															value="Parking" data-parsley-mincheck="2"
															class="form-check-input" /> <label for="hobby1">
															Parking </label>
													</div>
													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby2"
															value="Laundry" class="form-check-input" /> <label
															for="hobby2"> Laundry </label>
													</div>
													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby3"
															value="Food Court" class="form-check-input" /> <label
															for="hobby3"> Food Court </label>
													</div>
													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby3"
															value="Security" class="form-check-input" /> <label
															for="hobby3"> Security </label>
													</div>

													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby3"
															value="Internet" class="form-check-input" /> <label
															for="hobby3"> Internet </label>
													</div>

													<div class="form-check form-check-pink col-2">
														<input type="checkbox" name="facilities" id="hobby3"
															value="Room Service" class="form-check-input" /> <label
															for="hobby3"> Room Service </label>
													</div>
												</div>
											</div>

											<div class="col-md-12">
												<label for="fullname" class="form-label">Price Per
													day (<i class="mdi mdi-currency-inr"></i>)
												</label>
												<f:input type="text" placeholder=""
													 class="form-control"
													value="" path="hotelPrice" required="required" />
											</div>
											<div class="col-md-6">
												<label for="fullname" class="form-label"> Check in
													time :</label>
												<div class="mb-3">
													<div class="input-group clockpicker">
														<f:input type="text"
															placeholder="Check in
													time"
															class="form-control" 
															path="hotelCheckInTime" required="required" />

													</div>
												</div>
											</div>

											<f:hidden path="hotelId" />
											<div class="col-md-6">
												<label for="fullname" class="form-label"> Check out
													time :</label>
												<div class="mb-3">
													<div class="input-group clockpicker">
														<f:input type="text"
															placeholder="Check out
													time"
															class="form-control" 
															path="hotelCheckOutTime" required="required"/>

													</div>
												</div>
											</div>

											<h4 class="page-title mt-4">Contact Details</h4>

											<div class="col-md-12 mb-3">

												<f:select id="heard" class="form-select"
													path="cityId.cityId" required="required">
													<%-- <f:option value="none" selected="selected"
														disabled="disabled">Seleact City</f:option> --%>
													<h:forEach items="${cityList}" var="i">

														<f:option value="${i.cityId}">${i.cityName}</f:option>
													</h:forEach>

												</f:select>
											</div>


											<div class="col-md-12 mb-3">
												<f:textarea class="form-control" id="example-textarea"
													placeholder="Enter Hotel Address" path="hotelAddress" required="required"></f:textarea>
											</div>

											<div class="col-md-6 mb-3">
												<f:input type="email" id="example-email"
													name="example-email" class="form-control"
													placeholder="Email" path="hotelEmailAddress" required="required" />
											</div>

											<div class="col-md-6 mb-3">
												<f:input type="text" class="form-control" name="hotelname"
													placeholder="Contact No." id="fullname" maxlength="10"
													path="hotelContactNumber" required="required"/>
											</div>

											<h4 class="page-title">T & C</h4>

											<div class="col-md-12 mb-3	">
												<f:textarea class="form-control" id="example-textarea"
													placeholder="Cancelation Policy"
													path="hotelTermsAndConditions" required="required"></f:textarea>
											</div>

										</div>
										<div>
											<input type="submit" class="btn btn-success" value="${pageHader}">
										</div>

									</f:form>
								</div>
							</div>
							<!-- end card-->
						</div>
						<!-- end col-->
					</div>
					<!-- end row-->



				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<!-- Footer Start -->
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- end Footer -->

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->


	</div>
	<!-- END wrapper -->

	<!-- Vendor js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>

	<!-- Plugin js-->
	<script src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

	<!-- Validation init js-->
	<script src="<%=request.getContextPath()%>/adminResources/js/form-validation.init.js"></script>

	<!-- Plugins js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.mask.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/autoNumeric.min.js"></script>

	<!-- Plugins js-->
	<script src="<%=request.getContextPath()%>/adminResources/js/flatpickr.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/spectrum.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-clockpicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-datepicker.min.js"></script>

	<!-- Init js-->
	<script src="<%=request.getContextPath()%>/adminResources/js/form-pickers.init.js"></script>

	<!-- Init js-->
	<script src="<%=request.getContextPath()%>/adminResources/js/form-masks.init.js"></script>

	<!-- App js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>

</body>
</html>