<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!--To link Universal CSS  -->
 <link href="<c:url value='/css/universal.css' />" rel="stylesheet">
  <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<!-- Chart.js for the Sales Chart -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<!--favicon  -->
<link href="${pageContext.request.contextPath}/favicon.png" rel="shortcut icon">
</head>
<body>
    <!-- Sidebar -->
        <nav id="sidebar" class="col-md-2 d-none d-md-block bg-dark sidebar">
            <div class="sidebar-sticky">
                <h3 class="text-white text-center py-4">TEXTIPRO</h3>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                    </li>
                    
                    <!-- Master Menu with Submenu -->
                    <li class="nav-item">
                        <a class="nav-link" href="#masterSubmenu" data-toggle="collapse" aria-expanded="false" aria-controls="masterSubmenu">
                            <i class="fas fa-cogs"></i> Master <i class="fas fa-caret-down float-right"></i>
                        </a>
                        <div id="masterSubmenu" class="collapse">
                            <ul class="nav flex-column ml-3">
                            	<li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/settingList"><i class="fa fa-gear"></i>Settings</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/yarnList"><i class="fas fa-yarn"></i> Yarn Master</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/fabricList"><i class="fas fa-tshirt"></i> Fabric Master</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/buyerCustomerList?entityTypeString=buyer"><i class="fas fa-users"></i> Buyers / Customers</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/buyerCustomerList?entityTypeString=vendor"><i class="fas fa-truck"></i> Vendors / Suppliers</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/buyerCustomerList?entityTypeString=agent"><i class="fas fa-user-tie"></i> Sales Agents</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/buyerCustomerList?entityTypeString=consignee"><i class="fas fa-user-check"></i> Consignee</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/buyerCustomerList?entityTypeString=transportation"><i class="fas fa-shipping-fast"></i> Transportation</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/master/termsList"><i class="fas fa-file-signature"></i> Terms</a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <!-- Other menu items -->
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-exchange-alt"></i> Transactions</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-calculator"></i> Accounts</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-puzzle-piece"></i> Widget</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-chart-line"></i> Reports</a></li>
                </ul>
            </div>
        </nav>
</body>
</html>