<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>--</title>
</head>
<body>
	<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user-md"></i>
                        <span>Staff</span>
                    </a>
                    <ul class="sub">
						<li><a href="addStaff.jsp">Add New Staff</a></li>
						<li><a href="searchStaff.jsp">Search for Staff</a></li>
						<li><a href="updateStaff.jsp">Update Staff</a></li>
						<li><a href="deleteStaff.jsp">Delete Staff</a></li>
                    </ul>
                </li>
                <!--<li>
                    <a href="fontawesome.html">
                        <i class="fa fa-bullhorn"></i>
                        <span>Font awesome </span>
                    </a>
                </li> -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>Schedule</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addAppoinment.jsp">Add New Appointment</a></li>
						<li><a href="searchAppointment.jsp">Search for Appointment</a></li>
						<li><a href="updateAppointment.jsp">Update Appointment</a></li>
						<li><a href="deleteAppointment.jsp">Delete Appointment</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-github-alt"></i>
                        <span>Pet</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addPet.jsp">Add New Pet</a></li>
						<li><a href="searchPet.jsp">Search for Pet</a></li>
						<li><a href="updatePet.jsp">Update Pet</a></li>
						<li><a href="deletePet.jsp">Delete Pet</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-group"></i>
                        <span>Customer</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addCustomer.jsp">Add New Customer</a></li>
						<li><a href="searchCustomer.jsp">Search for Customer</a></li>
						<li><a href="updateCustomer.jsp">Update Customer</a></li>
						<li><a href="deleteCustomer.jsp">Delete Customer</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-briefcase"></i>
                        <span>Service</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addService.jsp">Add New Service</a></li>
						<li><a href="searchService.jsp">Search for Service</a></li>
						<li><a href="updateService.jsp">Update Service</a></li>
						<li><a href="deleteService.jsp">Delete Service</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-list-alt"></i>
                        <span>Transaction</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addTransaction.jsp">Add New Transaction</a></li>
						<li><a href="#">Search for Transaction</a></li>
						<li><a href="#">Update Transaction</a></li>
						<li><a href="#">Delete Transaction</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-money"></i>
                        <span>Payment</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addPayment.jsp">Add New Payment</a></li>
						<li><a href="#">Search for Payment</a></li>
						<li><a href="#">Generate Bill</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-wpforms"></i>
                        <span>Reports</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-envelope"></i>
                        <span>Mail </span>
                    </a>
                    <ul class="sub">
                        <li><a href="mail.html">Inbox</a></li>
                        <li><a href="mail_compose.html">Compose Mail</a></li>
                    </ul>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar End-->
</body>
</html>