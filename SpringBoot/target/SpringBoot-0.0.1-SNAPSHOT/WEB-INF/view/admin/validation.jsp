<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Validation | Parsley | UBold - Responsive Admin Dashboard Template</title>
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Validation</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Validation</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap Validation - Normal</h4>
                                        <p class="sub-header">Provide valuable, actionable feedback to your users with HTML5 form validation–available in all our supported browsers.</p>

                                        <form class="needs-validation" novalidate>
                                            <div class="mb-3">
                                                <label for="validationCustom01" class="form-label">First name</label>
                                                <input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Mark" required />
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationCustom02" class="form-label">Last name</label>
                                                <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="Otto" required />
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationCustomUsername" class="form-label">Username</label>
                                                <div class="input-group">
                                                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                    <input type="text" class="form-control" id="validationCustomUsername" placeholder="Username" aria-describedby="inputGroupPrepend" required />
                                                    <div class="invalid-feedback">
                                                        Please choose a username.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationCustom03" class="form-label">City</label>
                                                <input type="text" class="form-control" id="validationCustom03" placeholder="City" required />
                                                <div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationCustom04" class="form-label">State</label>
                                                <input type="text" class="form-control" id="validationCustom04" placeholder="State" required />
                                                <div class="invalid-feedback">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationCustom05" class="form-label">Zip</label>
                                                <input type="text" class="form-control" id="validationCustom05" placeholder="Zip" required />
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input" id="invalidCheck" required />
                                                    <label class="form-check-label" for="invalidCheck">Agree to terms and conditions</label>
                                                    <div class="invalid-feedback">
                                                        You must agree before submitting.
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="submit">Submit form</button>
                                        </form>

                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col-->


                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap Validation (Tooltips)</h4>
                                        <p class="sub-header">If your form layout allows it, you can swap the <code>.{valid|invalid}-feedback</code> classes for <code>.{valid|invalid}-tooltip</code> classes to display validation feedback in a styled tooltip.</p>
                            
                                        <form class="needs-validation" novalidate>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltip01" class="form-label">First name</label>
                                                <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" value="Mark" required />
                                                <div class="valid-tooltip">
                                                    Looks good!
                                                </div>
                                                <div class="invalid-tooltip">
                                                    Please enter first name.
                                                </div>
                                            </div>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltip02" class="form-label">Last name</label>
                                                <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" value="Otto" required />
                                                <div class="valid-tooltip">
                                                    Looks good!
                                                </div>
                                                <div class="invalid-tooltip">
                                                    Please enter last name.
                                                </div>
                                            </div>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltipUsername" class="form-label">Username</label>
                                                <div class="input-group">
                                                    <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                                                    <input type="text" class="form-control" id="validationTooltipUsername" placeholder="Username" aria-describedby="validationTooltipUsernamePrepend" required />
                                                    <div class="invalid-tooltip">
                                                        Please choose a unique and valid username.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltip03" class="form-label">City</label>
                                                <input type="text" class="form-control" id="validationTooltip03" placeholder="City" required />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltip04" class="form-label">State</label>
                                                <input type="text" class="form-control" id="validationTooltip04" placeholder="State" required />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="position-relative mb-3">
                                                <label for="validationTooltip05" class="form-label">Zip</label>
                                                <input type="text" class="form-control" id="validationTooltip05" placeholder="Zip" required />
                                                <div class="invalid-tooltip">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="submit">Submit form</button>
                                        </form>
                                    </div>
                                    <!-- end card-body-->
                                </div>
                                <!-- end card-->
                            </div>
                            <!-- end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Parsley Examples</h4>
                                        <p class="sub-header">Parsley is a javascript form validation library. It helps you provide your users with feedback on
                                        their form submission before sending it to your server.</p>

                                        <div class="alert alert-warning d-none fade show">
                                            <h4 class="mt-0 text-warning">Oh snap!</h4>
                                            <p class="mb-0">This form seems to be invalid :(</p>
                                        </div>

                                        <div class="alert alert-info d-none fade show">
                                            <h4 class="mt-0 text-info">Yay!</h4>
                                            <p class="mb-0">Everything seems to be ok :)</p>
                                        </div>

                                        <form id="demo-form" data-parsley-validate="">
                                            <div class="mb-3">
                                                <label for="fullname" class="form-label">Full Name * :</label>
                                                <input type="text" class="form-control" name="fullname" id="fullname" required="">
                                            </div>

                                            <div class="mb-3">
                                                <label for="email" class="form-label">Email * :</label>
                                                <input type="email" id="email" class="form-control" name="email" data-parsley-trigger="change" required="">
                                            </div>

                                            <div class="mb-3">
                                                <label class="form-label">Gender *:</label>

                                                <div class="form-check mb-1">
                                                    <input type="radio" name="gender" id="genderM" value="Male" required="" class="form-check-input">
                                                    <label for="genderM">Male</label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="radio" name="gender" id="genderF" value="Female" class="form-check-input">
                                                    <label for="genderF">Female</label>
                                                </div>
                                            </div>
											
                                            <div class="mb-3">
                                                <label class="form-label">Hobbies (Optional, but 2 minimum):</label>
                                            
                                                <div class="form-check form-check-pink mb-1">
                                                    <input type="checkbox" name="hobbies[]" id="hobby1" value="ski" data-parsley-mincheck="2" class="form-check-input" />
                                                    <label for="hobby1"> Skiing </label>
                                                </div>
                                                <div class="form-check form-check-pink mb-1">
                                                    <input type="checkbox" name="hobbies[]" id="hobby2" value="run" class="form-check-input" />
                                                    <label for="hobby2"> Running </label>
                                                </div>
                                                <div class="form-check form-check-pink">
                                                    <input type="checkbox" name="hobbies[]" id="hobby3" value="eat" class="form-check-input" />
                                                    <label for="hobby3"> Eating </label>
                                                </div>
                                            </div>
                                            

                                            <div class="mb-3">
                                                <label for="heard" class="form-label">Heard about us via *:</label>
                                                <select id="heard" class="form-select" required="">
                                                    <option value="">Choose..</option>
                                                    <option value="press">Press</option>
                                                    <option value="net">Internet</option>
                                                    <option value="mouth">Word of mouth</option>
                                                    <option value="other">Other..</option>
                                                </select>
                                            </div>

                                            <div class="mb-3">
                                                <label for="message" class="form-label">Message (20 chars min, 100 max) :</label>
                                                <textarea id="message" class="form-control" name="message"
                                                    data-parsley-trigger="keyup" data-parsley-minlength="20"
                                                    data-parsley-maxlength="100"
                                                    data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.."
                                                    data-parsley-validation-threshold="10">
                                                </textarea>
                                            </div>

                                            <div>
                                                <input type="submit" class="btn btn-success" value="Validate">
                                            </div>

                                        </form>
                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row-->


                        <div class="row">
                            <div class="col-lg-6">

                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Basic Form</h4>
                                        <p class="text-muted font-14">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>

                                        <form action="#" class="parsley-examples">
                                            <div class="mb-3">
                                                <label for="userName" class="form-label">User Name<span class="text-danger">*</span></label>
                                                <input type="text" name="nick" parsley-trigger="change" required placeholder="Enter user name" class="form-control" id="userName" />
                                            </div>
                                            <div class="mb-3">
                                                <label for="emailAddress" class="form-label">Email address<span class="text-danger">*</span></label>
                                                <input type="email" name="email" parsley-trigger="change" required placeholder="Enter email" class="form-control" id="emailAddress" />
                                            </div>
                                            <div class="mb-3">
                                                <label for="pass1" class="form-label">Password<span class="text-danger">*</span></label>
                                                <input id="pass1" type="password" placeholder="Password" required class="form-control" />
                                            </div>
                                            <div class="mb-3">
                                                <label for="passWord2" class="form-label">Confirm Password <span class="text-danger">*</span></label>
                                                <input data-parsley-equalto="#pass1" type="password" required placeholder="Password" class="form-control" id="passWord2" />
                                            </div>
                                            <div class="mb-3">
                                                <div class="form-check form-check-purple">
                                                    <input id="checkbox6a" type="checkbox" class="form-check-input" />
                                                    <label for="checkbox6a">
                                                        Remember me
                                                    </label>
                                                </div>
                                            </div>
                                        
                                            <div class="text-end">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit">Submit</button>
                                                <button type="reset" class="btn btn-secondary waves-effect">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <!-- end col -->

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Horizontal Form</h4>
                                        <p class="text-muted font-14">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>

                                        <form role="form" class="parsley-examples">
                                            <div class="row mb-3">
                                                <label for="inputEmail3" class="col-4 col-form-label">Email<span class="text-danger">*</span></label>
                                                <div class="col-7">
                                                    <input type="email" required parsley-type="email" class="form-control" id="inputEmail3" placeholder="Email" />
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="hori-pass1" class="col-4 col-form-label">Password<span class="text-danger">*</span></label>
                                                <div class="col-7">
                                                    <input id="hori-pass1" type="password" placeholder="Password" required class="form-control" />
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label for="hori-pass2" class="col-4 col-form-label">Confirm Password <span class="text-danger">*</span></label>
                                                <div class="col-7">
                                                    <input data-parsley-equalto="#hori-pass1" type="password" required placeholder="Password" class="form-control" id="hori-pass2" />
                                                </div>
                                            </div>
                                        
                                            <div class="row mb-3">
                                                <label for="webSite" class="col-4 col-form-label">Web Site<span class="text-danger">*</span></label>
                                                <div class="col-7">
                                                    <input type="url" required parsley-type="url" class="form-control" id="webSite" placeholder="URL" />
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-8 offset-4">
                                                    <div class="form-check form-check-purple">
                                                        <input id="checkbox6" type="checkbox" class="form-check-input" />
                                                        <label for="checkbox6">Remember me</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-8 offset-4">
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Register</button>
                                                    <button type="reset" class="btn btn-secondary waves-effect">Cancel</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div> <!-- end card -->

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Validation type</h4>
                                        <p class="text-muted font-14">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>

                                        <form action="#" class="parsley-examples">
                                            <div class="mb-3">
                                                <label class="form-label">Required</label>
                                                <input type="text" class="form-control" required placeholder="Type something" />
                                            </div>
                                        
                                            <div class="mb-3">
                                                <label class="form-label">Equal To</label>
                                                <div>
                                                    <input type="password" id="pass2" class="form-control" required placeholder="Password" />
                                                </div>
                                                <div class="mt-2">
                                                    <input type="password" class="form-control" required data-parsley-equalto="#pass2" placeholder="Re-Type Password" />
                                                </div>
                                            </div>
                                        
                                            <div class="mb-3">
                                                <label class="form-label">E-Mail</label>
                                                <div>
                                                    <input type="email" class="form-control" required parsley-type="email" placeholder="Enter a valid e-mail" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">URL</label>
                                                <div>
                                                    <input parsley-type="url" type="url" class="form-control" required placeholder="URL" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Digits</label>
                                                <div>
                                                    <input data-parsley-type="digits" type="text" class="form-control" required placeholder="Enter only digits" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Number</label>
                                                <div>
                                                    <input data-parsley-type="number" type="text" class="form-control" required placeholder="Enter only numbers" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Alphanumeric</label>
                                                <div>
                                                    <input data-parsley-type="alphanum" type="text" class="form-control" required placeholder="Enter alphanumeric value" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Textarea</label>
                                                <div>
                                                    <textarea required class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div>
                                                <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                                <button type="reset" class="btn btn-secondary waves-effect">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col-->

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Range validation</h4>
                                        <p class="text-muted font-14">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>

                                        <form action="#" class="parsley-examples">
                                            <div class="mb-3">
                                                <label class="form-label">Min Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-minlength="6" placeholder="Min 6 chars." />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Max Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-maxlength="6" placeholder="Max 6 chars." />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Range Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-length="[5,10]" placeholder="Text between 5 - 10 chars length" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Min Value</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-min="6" placeholder="Min value is 6" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Max Value</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-max="6" placeholder="Max value is 6" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Range Value</label>
                                                <div>
                                                    <input class="form-control" required type="text" min="6" max="100" placeholder="Number between 6 - 100" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Regular Exp</label>
                                                <div>
                                                    <input type="text" class="form-control" required data-parsley-pattern="#[A-Fa-f0-9]{6}" placeholder="Hex. Color" />
                                                </div>
                                            </div>
                                        
                                            <div>
                                                <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                                <button type="reset" class="btn btn-secondary waves-effect">Cancel</button>
                                            </div>
                                        </form>
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
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
        <div class="right-bar">
            <div data-simplebar class="h-100">
    
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-bordered nav-justified" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link py-2" data-bs-toggle="tab" href="#chat-tab" role="tab">
                            <i class="mdi mdi-message-text d-block font-22 my-1"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-2" data-bs-toggle="tab" href="#tasks-tab" role="tab">
                            <i class="mdi mdi-format-list-checkbox d-block font-22 my-1"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-2 active" data-bs-toggle="tab" href="#settings-tab" role="tab">
                            <i class="mdi mdi-cog-outline d-block font-22 my-1"></i>
                        </a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content pt-0">
                    <div class="tab-pane" id="chat-tab" role="tabpanel">
                
                        <form class="search-bar p-3">
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="mdi mdi-magnify"></span>
                            </div>
                        </form>

                        <h6 class="fw-medium px-3 mt-2 text-uppercase">Group Chats</h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-success"></i>
                                <span class="mb-0 mt-1">App Development</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-warning"></i>
                                <span class="mb-0 mt-1">Office Work</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-danger"></i>
                                <span class="mb-0 mt-1">Personal Group</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1"></i>
                                <span class="mb-0 mt-1">Freelance</span>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mt-3 text-uppercase">Favourites <a href="javascript: void(0);" class="font-18 text-danger"><i class="float-end mdi mdi-plus-circle"></i></a></h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-10.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status online"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Andrew Mackie</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">It will seem like simplified English.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-1.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status away"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Rory Dalyell</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">To an English person, it will seem like simplified</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-9.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status busy"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Jaxon Dunhill</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">To achieve this, it would be necessary.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mt-3 text-uppercase">Other Chats <a href="javascript: void(0);" class="font-18 text-danger"><i class="float-end mdi mdi-plus-circle"></i></a></h6>

                        <div class="p-2 pb-4">
                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-2.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status online"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Jackson Therry</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">Everyone realizes why a new common language.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-4.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status away"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Charles Deakin</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">The languages only differ in their grammar.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-5.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status online"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Ryan Salting</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">If several languages coalesce the grammar of the resulting.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-6.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status online"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Sean Howse</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">It will seem like simplified English.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-7.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status busy"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Dean Coward</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">The new common language will be more simple.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start noti-user-item">
                                    <div class="position-relative me-2">
                                        <img src="<%=request.getContextPath()%>/adminResources/image/user-8.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                        <i class="mdi mdi-circle user-status away"></i>
                                    </div>
                                    <div class="overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Hayley East</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">One could refuse to pay expensive translators.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <div class="text-center mt-3">
                                <a href="javascript:void(0);" class="btn btn-sm btn-white">
                                    <i class="mdi mdi-spin mdi-loading me-2"></i>
                                    Load more
                                </a>
                            </div>
                        </div>

                    </div>

                    <div class="tab-pane" id="tasks-tab" role="tabpanel">
                        <h6 class="fw-medium p-3 m-0 text-uppercase">Working Tasks</h6>
                        <div class="px-2">
                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">App Development<span class="float-end">75%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Database Repair<span class="float-end">37%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 37%" aria-valuenow="37" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Backup Create<span class="float-end">52%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 52%" aria-valuenow="52" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mb-0 mt-4 text-uppercase">Upcoming Tasks</h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Sales Reporting<span class="float-end">12%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 12%" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Redesign Website<span class="float-end">67%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 67%" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">New Admin Design<span class="float-end">84%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 84%" aria-valuenow="84" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>
                        </div>

                        <div class="p-3 mt-2 d-grid">
                            <a href="javascript: void(0);" class="btn btn-success waves-effect waves-light">Create Task</a>
                        </div>

                    </div>
                    <div class="tab-pane active" id="settings-tab" role="tabpanel">
                        <h6 class="fw-medium px-3 m-0 py-2 font-13 text-uppercase bg-light">
                            <span class="d-block py-1">Theme Settings</span>
                        </h6>

                        <div class="p-3">
                            <div class="alert alert-warning" role="alert">
                                <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
                            </div>

                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Color Scheme</h6>
                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="layout-color" value="light"
                                    id="light-mode-check" checked />
                                <label class="form-check-label" for="light-mode-check">Light Mode</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="layout-color" value="dark"
                                    id="dark-mode-check" />
                                <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                            </div>

                            <!-- Width -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Width</h6>
                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="layout-width" value="fluid" id="fluid-check" checked />
                                <label class="form-check-label" for="fluid-check">Fluid</label>
                            </div>
                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="layout-width" value="boxed" id="boxed-check" />
                                <label class="form-check-label" for="boxed-check">Boxed</label>
                            </div>

                            <!-- Menu positions -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Menus (Leftsidebar and Topbar) Positon</h6>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="menu-position" value="fixed" id="fixed-check"
                                    checked />
                                <label class="form-check-label" for="fixed-check">Fixed</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="menu-position" value="scrollable"
                                    id="scrollable-check" />
                                <label class="form-check-label" for="scrollable-check">Scrollable</label>
                            </div>

                            <!-- Left Sidebar-->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Left Sidebar Color</h6>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-color" value="light" id="light-check" />
                                <label class="form-check-label" for="light-check">Light</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-color" value="dark" id="dark-check" checked/>
                                <label class="form-check-label" for="dark-check">Dark</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-color" value="brand" id="brand-check" />
                                <label class="form-check-label" for="brand-check">Brand</label>
                            </div>

                            <div class="form-check form-switch mb-3">
                                <input type="checkbox" class="form-check-input" name="leftbar-color" value="gradient" id="gradient-check" />
                                <label class="form-check-label" for="gradient-check">Gradient</label>
                            </div>

                            <!-- size -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Left Sidebar Size</h6>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-size" value="default"
                                    id="default-size-check" checked />
                                <label class="form-check-label" for="default-size-check">Default</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-size" value="condensed"
                                    id="condensed-check" />
                                <label class="form-check-label" for="condensed-check">Condensed <small>(Extra Small size)</small></label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="leftbar-size" value="compact"
                                    id="compact-check" />
                                <label class="form-check-label" for="compact-check">Compact <small>(Small size)</small></label>
                            </div>

                            <!-- User info -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Sidebar User Info</h6>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="sidebar-user" value="fixed" id="sidebaruser-check" />
                                <label class="form-check-label" for="sidebaruser-check">Enable</label>
                            </div>


                            <!-- Topbar -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Topbar</h6>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="topbar-color" value="dark" id="darktopbar-check"
                                    checked />
                                <label class="form-check-label" for="darktopbar-check">Dark</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input type="checkbox" class="form-check-input" name="topbar-color" value="light" id="lighttopbar-check" />
                                <label class="form-check-label" for="lighttopbar-check">Light</label>
                            </div>


                            <div class="d-grid mt-4">
                                <button class="btn btn-primary" id="resetBtn">Reset to Default</button>
                                <a href="https://1.envato.market/uboldadmin" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                            </div>

                        </div>

                    </div>
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
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