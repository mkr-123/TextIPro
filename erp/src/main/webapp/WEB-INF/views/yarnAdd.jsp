<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yarn Master</title>
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
                <h4>Yarn Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/yarnList">List</a></li>
                    </ol>
                </nav>
            </div>
            <!-- form Data -->
        <form action="${pageContext.request.contextPath}/master/saveYarn" method="post" class="form-container">
            <div class="form-group">
                <label for="yarnName">Name<sup class="mandatory">*</sup></label>
                <input type="text" id="yarnName" name="yarnName" placeholder="Yarn Name" required="required" oninvalid="this.setCustomValidity('Please enter the yarn name')" oninput="this.setCustomValidity('')" value="${yarnMaster.yarnName}">
            </div>
            <div class="form-group">
                <label for="commonSettingsForUnits">Units<sup class="mandatory">*</sup></label>
               
                <select id="commonSettingsForUnits" name="commonSettingsForUnits" required 
        oninvalid="this.setCustomValidity('Please select a UOM')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${uomList}" var="uom">
                    <option value="${uom.commonSettingsId}"${uom.commonSettingsId == yarnMaster.commonSettingsForUnits.commonSettingsId ? 'selected' : ''}>${uom.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="commonSettingsForCounts">Counts<sup class="mandatory">*</sup></label>
                <select id="commonSettingsForCounts" name="commonSettingsForCounts" required 
        oninvalid="this.setCustomValidity('Please select a count')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${countList}" var="countList">
                    <option value="${countList.commonSettingsId}" ${countList.commonSettingsId == yarnMaster.commonSettingsForCounts.commonSettingsId ? 'selected' : ''}>${countList.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="commonSettingsForTypes">Types<sup class="mandatory">*</sup></label>
                <!-- <input type="text" id="types" name="types" placeholder="Types" required="required" oninvalid="this.setCustomValidity('Please enter the types')" oninput="this.setCustomValidity('')"> -->
          		<select id="commonSettingsForTypes" name="commonSettingsForTypes" required 
        oninvalid="this.setCustomValidity('Please select a Type')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${typeList}" var="typeList">
                    <option value="${typeList.commonSettingsId}"${typeList.commonSettingsId == yarnMaster.commonSettingsForTypes.commonSettingsId ? 'selected' : ''}>${typeList.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="conversion">Conversion<sup class="mandatory">*</sup></label>
                <input type="number" id="conversion" name="conversion" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            </div>
            <div class="form-group">
            <c:if test="${not empty yarnMaster.yarnMasterId}"><input type="hidden" name="yarnMasterId" value="${yarnMaster.yarnMasterId}"></c:if>
                <button type="submit" class="add-button"><c:if test="${empty yarnMaster.yarnMasterId}">Add</c:if><c:if test="${not empty yarnMaster.yarnMasterId}">Update</c:if></button>
            </div>
        </form>
        </main>
    </div>
    </div>
</body>
</html>
