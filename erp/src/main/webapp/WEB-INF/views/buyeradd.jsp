<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Buyers / Customer</title>
    <link rel="stylesheet" href="style.css"> <!-- Link to your CSS file if needed -->
     <link href="<c:url value='/css/form.css' />" rel="stylesheet"> <!-- Link to your form file -->
    <style>
    </style>
    <script type="text/javascript">
    const contextPath = '${pageContext.request.contextPath}';
    function validateForm() {
    	if($("#mobileNo").val()!=''){
        const mobileNo = document.getElementById("mobileNo").value;
        const mobilePattern = /^[0-9]{10}$/;

        if (!mobilePattern.test(mobileNo)) {
            alert("Mobile number must be exactly 10 digits.");
            return false; // Prevent form submission
        }
    	}
    	if($("#panCard").val()!=''){
    		$("#panCard").val($("#panCard").val().toUpperCase());
    		const panNo=$("#panCard").val();
    		const panNoPattern=/^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
    		if(!panNoPattern.test(panNo)){
    			alert("Invalid PAN number. It should be in the format: AAAAA9999A (5 letters, 4 digits, 1 letter).");
    			return false;
    		}
    	}
        return true; 
    }
    </script>
       <script src="${pageContext.request.contextPath}/js/togetstateandcitybasedoncountry.js"></script>
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
                <h4>Add Buyers / Customers</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/buyerCustomerList">List</a></li>
                    </ol>
                </nav>
            </div>
            <!-- form Data -->
        <form action="${pageContext.request.contextPath}/master/saveBuyerM" onsubmit="return validateForm();" method="post" class="form-container">
            <div class="form-group">
                <label for="buyerName">Buyer Name<sup class="mandatory">*</sup></label>
                <input type="text" id="buyerName" name="buyerName" placeholder="Buyer Name" required="required" oninvalid="this.setCustomValidity('Please enter the Buyer name')" oninput="this.setCustomValidity('')" value="${yarnMaster.yarnName}">
            </div>
            <div class="form-group">
                <label for="gstNo">GST NO  </label>
				<input type="text" id="gstNo" name="gstNo" placeholder="GST NO"  value="${yarnMaster.yarnName}">
            </div>
            <div class="form-group">
                <label for="panCard">PAN Card  </label>
                <input type="text" id="panCard" name="panCard" placeholder="PAN card"  value="${yarnMaster.yarnName}">
            </div>
             <div class="form-group">
                <label for="mobileNo">Mobile No</label>
                <input type="number" id="mobileNo" name="mobileNo" pattern="^[0-9]{10}$"   title="Mobile number must be exactly 10 digits"  placeholder="Mobile No"  value="${yarnMaster.yarnName}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Email"  value="${yarnMaster.yarnName}">
            </div>
            <div class="form-group">
                <label for="countryM">Country  </label>
          		<select id="countryM" name="countryM" onchange="getState(this.value)">
                    <option value="">Please Select</option>
                    <c:forEach items="${countryList}" var="countryList">
                    <option value="${countryList.countryMId}"${countryList.countryMId == yarnMaster.commonSettingsForTypes.commonSettingsId ? 'selected' : ''}>${countryList.countryName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="stateM">State  </label>
                <select id="stateM" name="stateM" onchange="getCities(this.value)"></select>
                            </div>
                  <div class="form-group">
                <label for="cityM">City  </label>
            	<select id="cityM" name="cityM"></select>
            	            	</div>
                        <div class="form-group">
                <label for="address">Address  </label>
                <textarea rows="3" id="address" name="address" placeholder="Setting Name"  value="${yarnMaster.address}"></textarea>
            </div>
                                    <div class="form-group">
                <label for="image">Image  </label>
                <input type="file" id="image" name="image" accept="image/*" />
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
