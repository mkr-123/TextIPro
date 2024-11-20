<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings Master</title>
    <link rel="stylesheet" href="style.css"> <!-- Link to your CSS file if needed -->
    <link href="<c:url value='/css/form.css' />" rel="stylesheet"> <!-- Link to your form file -->
    <style>
     
    </style>
</head>
<body>
<div class="container-fluid">
<div class="row">
<!-- Sidebar -->
        <jsp:include page="sidebar.jsp"></jsp:include>

        <!-- Main Content -->
  
     <main role="main" class="col-md-10 ml-sm-auto px-4">
    
         <!-- Page Header -->
           <div class="content-header d-flex justify-content-between align-items-center">
                <h4>Settings Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/settingList">List</a></li>
                    </ol>
                </nav>
            </div>
            <!-- form Data -->
        <form action="${pageContext.request.contextPath}/master/saveSettings" method="post" class="form-container">
      <%--       <div class="form-group">
                <label for="yarnName">Name<sup class="mandatory">*</sup></label>
                <input type="text" id="yarnName" name="yarnName" placeholder="Yarn Name" required="required" oninvalid="this.setCustomValidity('Please enter the yarn name')" oninput="this.setCustomValidity('')">
            </div>
            <div class="form-group">
                <label for="units">Units<sup class="mandatory">*</sup></label>
               
                <select id="units" name="uom" required 
        oninvalid="this.setCustomValidity('Please select a UOM')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${uomList}" var="uom">
                    <option value="${uom.uomId}">${uom.unitName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="counts">Counts<sup class="mandatory">*</sup></label>
                <select id="counts" name="count" required 
        oninvalid="this.setCustomValidity('Please select a count')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <option value="1">Count 1</option>
                    <option value="2">Count 2</option>
                    <!-- Add more options as needed -->
                </select>
            </div> --%>
            <div class="form-group">
                <label for="types">Types<sup class="mandatory">*</sup></label>
           	    <!--  <input type="text" id="types" name="types" placeholder="Types" required="required" oninvalid="this.setCustomValidity('Please enter the types')" oninput="this.setCustomValidity('')"> -->
           		 <select id="types" name="types" required 
        oninvalid="this.setCustomValidity('Please select a Types')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${types}" var="types">
                    <option value="${types}">${types}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="settingsName">Settings Name<sup class="mandatory">*</sup></label>
                <input type="text" id="settingsName" name="settingsName" placeholder="Settings Name" required="required" oninvalid="this.setCustomValidity('Please enter the Settings Name')" oninput="this.setCustomValidity('')">
            </div>
            <div class="form-group">
                <button type="submit" class="add-button">Add</button>
            </div>
        </form>
        </main>
    </div>
    </div>
</body>
</html>
