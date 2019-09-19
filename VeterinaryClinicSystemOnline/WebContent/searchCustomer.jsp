<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.vcs.dao.*"%>
<%@ page import="com.vcs.daoImplement.*"%>
<%@ page import="com.vcs.model.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Search Customer :: Veterinary Clinic System</title>
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

<%  CustomerDAO cdao = new CustomerDaoImplement();
	List<Customer> custData = cdao.getAllCustomer();
	request.setAttribute("custData", custData);	
%>
</head>
<body>
<section id="container">
	<%@ include file="header.jsp"  %>
	<%@ include file="sideMenu.jsp" %>
	<section id="main-content">
		<section class="wrapper">
			<div class="table-agile-info">
        		<div class="panel panel-default">
                     <header class="panel-heading">
	                    All Customer
	                  </header>
	                  <div class="row w3-res-tb">
	                  	<div class="col-sm-5 m-b-xs">
					        <select class="input-sm form-control w-sm inline v-middle">
					          <option value="0">Bulk action</option>
					          <option value="1">Delete selected</option>
					        </select>
					        <button class="btn btn-sm btn-default">Apply</button>                
      					</div>
      					<div class="col-sm-4"></div>
      					<div class="col-sm-3">
					        <div class="input-group">
					          <input type="text" class="input-sm form-control" placeholder="Search">
					          <span class="input-group-btn">
					            <button class="btn btn-sm btn-default" type="button">Go!</button>
					          </span>
					        </div>
      					</div>
      				  </div>
      				  <div class="table-responsive">
	                  	<table class="table table-striped b-t b-light">
	                  		<thead>
	                  			<tr>
	                  				<th>CUSTOMER IC</th>
	                  				<th>NAME</th>
	                  				<th>GENDER</th>
	                  				<th>ADDRESS</th>
	                  				<th>PHONE</th>
	                  			</tr>
	                  		</thead>
	                  		<tbody>
	                  			<c:forEach items="${custData}" var="c">
	                  				<tr>
	                  					<td>${c.custIC}</td>
	                  					<td>${c.custName}</td>
	                  					<td>${c.custGender}</td>
	                  					<td>${c.custAddress}</td>
	                  					<td>${c.custPhoneNum}</td>
	                  				</tr>
	                  			</c:forEach>
	                  		</tbody>
	                  	</table>
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