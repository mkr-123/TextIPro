<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Term Master</title>
    <link rel="stylesheet" href="style.css"> <!-- Link to your CSS file if needed -->
    <link href="<c:url value='/css/form.css' />" rel="stylesheet"> <!-- Link to your form file -->
</head>
<div class="container-fluid">
<div class="row">
<!-- Sidebar -->
        <jsp:include page="sidebar.jsp"></jsp:include>

        <!-- Main Content -->
  
     <main role="main" class="col-md-10 ml-sm-auto px-4">
    
         <!-- Page Header -->
           <div class="content-header d-flex justify-content-between align-items-center">
                <h4>Term Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/termsList">List</a></li>
                    </ol>
                </nav>
            </div>
            <!-- form Data -->
        <form action="${pageContext.request.contextPath}/master/saveTerm" method="post" class="form-container">
            <div class="form-group">
                <label for="typeOfTerms">Type    <sup class="mandatory">*</sup></label>
                <select id="typeOfTerms" name="typeOfTerms">
                <option value="">Select Type</option>
                <option value="paymentTerms"${termMaster.typeOfTerms=="paymentTerms"?'selected' : ''}>Payment terms</option>
                <option value="deliveryTerms"${termMaster.typeOfTerms=="deliveryTerms"?'selected' : ''}>Delivery terms</option>
                </select>
            </div>
            <div class="form-group">
                <label for="title">Title<sup class="mandatory">*</sup></label>
               
<input type="text" id="title" name="title" placeholder="Title" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${termMaster.title}">
            </div>
            <div class="form-group">
                <label for="description">Description<sup class="mandatory">*</sup></label>
              <input type="text" id="description" name="description" placeholder="Description" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${termMaster.description}">
                    <!-- Add more options as needed -->
            </div>
            <div class="form-group">
                <label for="noOfDays">No of Days<sup class="mandatory">*</sup></label>
                <!-- <input type="text" id="types" name="types" placeholder="Types" required="required" oninvalid="this.setCustomValidity('Please enter the types')" oninput="this.setCustomValidity('')"> -->
          		<input type="number" id="noOfDays" name="noOfDays" placeholder="No of Days" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${termMaster.noOfDays}">
                    <!-- Add more options as needed -->
            </div>
            
            <div class="form-group">
                <label for="intrest">Interest<sup class="mandatory">*</sup></label>
                <input type="number" id="intrest" name="intrest" placeholder="Interest" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${termMaster.intrest}">
            </div>
            <div class="form-group">
            <c:if test="${not empty termMaster.termMasterId}"><input type="hidden" name="termMasterId" value="${termMaster.termMasterId}"></c:if>
                <button type="submit" class="add-button"><c:if test="${empty termMaster.termMasterId}">Add</c:if><c:if test="${not empty termMaster.termMasterId}">Update</c:if></button>
            </div>
        </form>
        </main>
    </div>
    </div>
</body>
</html>
