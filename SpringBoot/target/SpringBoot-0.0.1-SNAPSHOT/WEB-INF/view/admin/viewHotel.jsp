<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>AVAHM | View Hotels</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/AVAHM_Logo2.png">

        <!-- third party css -->
        <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/adminResources/css/select.bootstrap5.min.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->

		<!-- Bootstrap css -->
		<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- App css -->
		<link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet" type="text/css" id="app-style"/>
		<!-- icons -->
		<link href="<%=request.getContextPath()%>/adminResources/css/icons.min.css" rel="stylesheet" type="text/css" />
		<!-- Head js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/head.js"></script>

    </head>

    <!-- body start -->
    <body data-layout-mode="default" data-theme="light" data-layout-width="fluid" data-topbar-color="dark" data-menu-position="fixed" data-leftbar-color="light" data-leftbar-size='default' data-sidebar-user='false'>

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Manage City</a></li>
                                            <li class="breadcrumb-item active">View City</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">View City</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 



                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                    
									
                                        <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                                            <thead>
                                                <tr>
                                                <th>#</th>
                                                    <th>Hotel Name</th>
                                                    <th>Hotel Category</th>
                                                    <th>Hotel Facilities</th>
                                                    <th>Hotel Price</th>
                                                    <th>Hotel Checkin Time</th>
                                                    <th>Hotel Checkout Time</th>
                                                    <th>City Name</th>
                                                    <th>Hotel Address</th>
                                                    <th>Hotel Email Address</th> 
                                                    <th>Hotel Contact Number</th>
                                                    <th>Hotel Terms & Condition</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                        
                                        
                                            <tbody>
                                            	<c:forEach items="${hotelList}" var="hotelList" varStatus="j">
                                                <tr>
                                                	<td>${j.count}</td>
													<td>${hotelList.hotelName}</td>
													<td>${hotelList.hotelCategory}</td>
													<td>${hotelList.hotelFacilities}</td>
													<td>${hotelList.hotelPrice}</td>
													<td>${hotelList.hotelCheckInTime}</td>
													<td>${hotelList.hotelCheckOutTime}</td>
													<td>${hotelList.cityId.cityName}</td>
													<td>${hotelList.hotelAddress}</td>
													<td>${hotelList.hotelEmailAddress}</td>
													<td>${hotelList.hotelContactNumber}</td>
													<td>${hotelList.hotelTermsAndConditions}</td>
                                                    
                                                    <td><a href="editHotel?hotelId=${hotelList.hotelId}">
														<i class="mdi mdi-pencil lead"></i>
													</a>
													<a href="deleteHotel?hotelId=${hotelList.hotelId}">
														<i class="mdi mdi-delete lead text-danger ms-2"></i>
													</a></td>
                                                   
                                                </tr>
                                               </c:forEach>
                                            </tbody>
                                        </table>
                                        
                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end row-->


    
                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
                <jsp:include page="footer.jsp"></jsp:include>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="<%=request.getContextPath()%>/adminResources/js/vendor.min.js"></script>

        <!-- third party js -->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap5.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap5.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.bootstrap5.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.keyTable.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.select.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
        <!-- third party js ends -->

        <!-- Datatables init -->
        <script src="<%=request.getContextPath()%>/adminResources/js/datatables.init.js"></script>

        <!-- App js -->
        <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
        
    </body>
</html>