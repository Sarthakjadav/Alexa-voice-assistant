<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Add City</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">

		<!-- Bootstrap css -->
		<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- App css -->
		<link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet" type="text/css" id="app-style"/>
		<!-- icons -->
		<link href="<%=request.getContextPath()%>/adminResources/css/icons.min.css" rel="stylesheet" type="text/css" />
		<!-- Head js -->
		<script src="<%=request.getContextPath()%>/adminResources/js/head.js"></script>

    </head>

    <!--3 body start -->
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Manage Complain</a></li>
                                            <li class="breadcrumb-item active">Complain Reply </li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Add City</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 



                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                      
                                        <form id="demo-form" data-parsley-validate="">
                                            <div class="mb-3">
                                                <label for="fullname" class="form-label">Complaint Subject :</label>
                                                <input type="text" class="form-control" name="complaintsubject" id="fullname" required="">
                                            </div>

                                         
                                           

                                            <div class="mb-3">
                                                <label for="message" class="form-label">Complaint Description :</label>
                                                <textarea id="message" class="form-control" name="complaintdescription"
                                                    data-parsley-trigger="keyup" data-parsley-minlength="20"
                                                    data-parsley-maxlength="100"
                                                    data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.."
                                                    data-parsley-validation-threshold="10">
                                                </textarea>
                                            </div>
                                            
                                             <div class="mb-3">
                                                <label for="fullname" class="form-label">Complaint Reply:</label>
                                                <input type="text" class="form-control" name="complaintreply" id="fullname" required="">
                                            </div>

                                            <div>
                                                <input type="submit" class="btn btn-success" value="Add">
                                            </div>

                                        </form>
                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col-->
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

        <!-- Plugin js-->
        <script src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

        <!-- Validation init js-->
        <script src="<%=request.getContextPath()%>/adminResources/js/form-validation.init.js"></script>

        <!-- App js -->
        <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
        
    </body>
</html>