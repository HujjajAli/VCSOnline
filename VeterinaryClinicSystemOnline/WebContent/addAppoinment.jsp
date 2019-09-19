<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Add Appoinment :: Veterinary Clinic System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
</head>
<body>
	<section id="container">
	<%@ include file="header.jsp"  %>
	<%@ include file="sideMenu.jsp" %>
	<section id="main-content">
		<section class="wrapper">
			<div class="form-w3layouts">
				<!-- page start-->
        		<!-- page start-->
        		<div class="row">
            		<div class="col-lg-12">
            			<section class="panel">
	                        <header class="panel-heading">
	                            Add Appointment
	                        </header>
	                        <div class="panel-body">
	                        	<div class="position-center">
                            		<form class="form-horizontal" role="form">
                            			<div class="form-group">
                            				<label for="sname" class="col-lg-2 col-sm-2 control-label">Time </label>
			                                <div class="col-lg-4">
			                                    <select name="t" class="form-control">
			                                    	<option value="8">8</option>
			                                    	<option value="9">9</option>
			                                    	<option value="10">10</option>
			                                    	<option value="11">11</option>
			                                    	<option value="12">12</option>
			                                    	<option value="1">1</option>
			                                    	<option value="2">2</option>
			                                    	<option value="3">3</option>
			                                    	<option value="4">4</option>
			                                    </select> Hours
			                                </div>
			                                <div class="col-lg-4">
			                                    <select name="t" class="form-control">
			                                    <%for(int i=1;i<60;i++){ %>
			                                    	<%if(i<10) {%>
			                                    	<option value="<%=i %>">0<%=i %></option>
			                                    	<%}else{ %>
			                                    	<option value="<%=i %>"><%=i %></option>
			                                    	<%} %>
			                                    <%} %>	
			                                    </select> Minutes
			                                </div>
                            			</div>
                            			<div class="form-group">
			                                <label for="sname" class="col-lg-2 col-sm-2 control-label">Date </label>
			                                <div class="col-lg-8">
			                                    <input type="date" class="form-control" id="sname" placeholder="Enter Staff Name">
			                                </div>
			                            </div>
			                            <div class="form-group">
			                                <label for="sname" class="col-lg-2 col-sm-2 control-label">Name </label>
			                                <div class="col-lg-8">
			                                    <input type="text" class="form-control" id="sname" placeholder="Enter Staff Name">
			                                </div>
			                            </div>
			                            <div class="form-group">
			                                <label for="sname" class="col-lg-2 col-sm-2 control-label">Phone </label>
			                                <div class="col-lg-8">
			                                    <input type="text" class="form-control" id="sname" placeholder="Enter Staff Name">
			                                </div>
			                            </div>
			                            <div class="form-group">
                            				
			                                <div class="col-lg-offset-2 col-lg-8">
			                                    <button type="submit" class="btn btn-info form-control">Add Appointment</button>
			                                </div>
                            			</div>
                            		</form>
                            	</div>			
	                        </div>
	                    </section>
	                </div>
	            </div>
	        </div>
	     </section>
	</section>
	</section>
	
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>	                        
</body>
</html>