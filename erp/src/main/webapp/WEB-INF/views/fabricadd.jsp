<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fabric Master</title>
    <link rel="stylesheet" href="style.css"> <!-- Link to your CSS file if needed -->
    <link href="<c:url value='/css/form.css' />" rel="stylesheet"> <!-- Link to your form file -->
    <style>
    </style>
       </head>
<body>
<div class="container-fluid">
<div class=" row">
<!-- Sidebar -->
        <jsp:include page="sidebar.jsp"></jsp:include>
        <script src="${pageContext.request.contextPath}/js/toappendremoverow.js"></script>
        
        

        <!-- Main Content -->
  
     <main role="main" class="col-md-10 ml-sm-auto px-4">
    
         <!-- Page Header -->
           <div class="content-header d-flex justify-content-between align-items-center">
                <h4>Fabric Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/fabricList">List</a></li>
                    </ol>
                </nav>
            </div>
            <!-- form Data -->
        <form action="${pageContext.request.contextPath}/master/saveFabric" method="post" class="form-container">
            <div class="form-group">
                <label for="fabricType">Fabric Type<sup class="mandatory">*</sup></label>
               <%--  <input type="text" id="fabricType" name="fabricType" placeholder="Yarn Name" required="required" oninvalid="this.setCustomValidity('Please enter the yarn name')" oninput="this.setCustomValidity('')" value="${yarnMaster.yarnName}"> --%>
      			 <select id="fabricType" name="fabricType" required 
        oninvalid="this.setCustomValidity('Please select a count')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                   <option value="GREGIE">GREGIE</option>
                   <option value="FINISHED">FINISHED</option>
                   <option value="FINISHED_SHADE">FINISHED SHADE</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
             <label for="fabricCode">Fabric Code<sup class="mandatory">*</sup></label>
                <input type="number" id="fabricCode" name="fabricCode" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
   
            </div>
            <div class="form-group">
            <label for="fabricName">Fabric Name<sup class="mandatory">*</sup></label>
                <input type="text" id="fabricName" name="fabricName" placeholder="fabric Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
           <%--      <label for="commonSettingsForCounts">Counts<sup class="mandatory">*</sup></label>
                <select id="commonSettingsForCounts" name="commonSettingsForCounts" required 
        oninvalid="this.setCustomValidity('Please select a count')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${countList}" var="countList">
                    <option value="${countList.commonSettingsId}" ${countList.commonSettingsId == yarnMaster.commonSettingsForCounts.commonSettingsId ? 'selected' : ''}>${countList.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select> --%>
            </div>
            <div class="form-group">
                <label for="commonSettingsForWeave">Weave<sup class="mandatory">*</sup></label>
                <!-- <input type="text" id="types" name="types" placeholder="Types" required="required" oninvalid="this.setCustomValidity('Please enter the types')" oninput="this.setCustomValidity('')"> -->
          		<select id="commonSettingsForWeave" name="commonSettingsForWeave" required 
        oninvalid="this.setCustomValidity('Please select a Type')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${weaveList}" var="weaveList">
                    <option value="${weaveList.commonSettingsId}"${typeList.commonSettingsId == yarnMaster.commonSettingsForTypes.commonSettingsId ? 'selected' : ''}>${weaveList.types}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
            </div>
                        <div class="form-group">
                         <label for="fabricQuality">Fabric Quality<sup class="mandatory">*</sup></label>
                <input type="number" id="fabricQuality" name="fabricQuality" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
    <%--             <label for="commonSettingsForColors">Color<sup class="mandatory">*</sup></label>
          		<select id="commonSettingsForColors" name="commonSettingsForColors" required 
        oninvalid="this.setCustomValidity('Please select a Color')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${colorList}" var="colorList">
                    <option value="${colorList.commonSettingsId}"${colorList.commonSettingsId == yarnMaster.commonSettingsForColors.commonSettingsId ? 'selected' : ''}>${colorList.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select> --%>
            </div>
            <div class="form-group">
                         <label for="commonSettingsForUnits">UOM<sup class="mandatory">*</sup></label>
               
                <select id="commonSettingsForUnits" name="commonSettingsForUnits" required 
        oninvalid="this.setCustomValidity('Please select a UOM')"
        oninput="this.setCustomValidity('')">
                    <option value="">Please Select</option>
                    <c:forEach items="${uomList}" var="uom">
                    <option value="${uom.commonSettingsId}"${uom.commonSettingsId == yarnMaster.commonSettingsForUnits.commonSettingsId ? 'selected' : ''}>${uom.settingsName}</option>
                    </c:forEach>
                    <!-- Add more options as needed -->
                </select>
              <%--   <label for="conversion">Conversion<sup class="mandatory">*</sup></label>
                <input type="number" id="conversion" name="conversion" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
 --%>            </div>
  <div class="form-group">
                           <label for="epi">EPI<sup class="mandatory">*</sup></label>
  <input type="number" id="epi" name="epi" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
   <div class="form-group">
                           <label for="ppi">PPI<sup class="mandatory">*</sup></label>
  <input type="number" id="ppi" name="ppi" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>

   <div class="form-group">
                           <label for="greigeCode">Greige Code<sup class="mandatory">*</sup></label>
  <input type="number" id="greigeCode" name="greigeCode" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
   <div class="form-group">
                           <label for="totalEnds">Total Ends<sup class="mandatory">*</sup></label>
  <input type="number" id="totalEnds" name="totalEnds" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
   <div class="form-group">
                           <label for="gsm">GSM<sup class="mandatory">*</sup></label>
  <input type="number" id="gsm" name="gsm" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
     <div class="form-group">
                           <label for="glm">GLM<sup class="mandatory">*</sup></label>
  <input type="number" id="glm" name="glm" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
   <div class="form-group">
                           <label for="igst">IGST<sup class="mandatory">*</sup></label>
  <input type="number" id="igst" name="igst" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
     <div class="form-group">
                           <label for="cgst">CGST<sup class="mandatory">*</sup></label>
  <input type="number" id="cgst" name="cgst" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
   <div class="form-group">
                           <label for="sgst">SGST<sup class="mandatory">*</sup></label>
  <input type="number" id="sgst" name="sgst" placeholder="Setting Name" required="required" oninvalid="this.setCustomValidity('Please enter the conversion')" oninput="this.setCustomValidity('')" value="${yarnMaster.conversion}">
            
  </div>
                                      <div class="form-group">
                <label for="image">Image  </label>
                <input type="file" id="image" name="image" accept="image/*" src="${buyerM.image}" />
                       </div>   

<div class="form-group table-responsive" >
<p><b>Warp Details</b></p>
    <table class="table table-bordered table-hover" id="warpdetails">
        <thead class="thead-light">
            <tr>
                <th scope="col">Sl</th>
                <th scope="col">Yarn</th>
                <th scope="col">Shrinkage%</th>
                <th scope="col">Grams/Mtr</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <tr >
                <td>1</td>
                <td><select name="warpDetails[0].yarnMaster">
                 <option value="">Select Yarn</option>
                 <c:forEach items="${yarnMasterList}" var="yarnMasterList">
                <option value="${yarnMasterList.yarnMasterId}">${yarnMasterList.yarnName}</option>
                </c:forEach>
                </select>  </td>
                <td><input type="number" name="warpDetails[0].shrinkagePer"> </td>
                <td><input type="number" name="warpDetails[0].meters"></td>
                <td>
                    <button type="button" id="addRow" class="btn btn-primary btn-sm" onclick="addRowTabel('warpdetails')" >Add</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<div class="form-group table-responsive" >
<p><b>Weft Details</b></p>
    <table class="table table-bordered table-hover" id="weftdetails">
        <thead class="thead-light">
            <tr>
                <th scope="col">Sl</th>
                <th scope="col">Yarn</th>
                <th scope="col">Shrinkage%</th>
                <th scope="col">Grams/Mtr</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <tr >
                <td>1</td>
                <td><select name="yarnMasterId">
                 <option value="">Select Yarn</option>
                 <c:forEach items="${yarnMasterList}" var="yarnMasterList">
                <option value="${yarnMasterList.yarnMasterId}">${yarnMasterList.yarnName}</option>
                </c:forEach>
                </select></td>
                <td><input type="number" name="shrinkagePer"> </td>
                <td><input type="number" name="meters"></td>
                <td>
                    <button type="button" id="addRow" class="btn btn-primary btn-sm" onclick="addRowTabel('weftdetails')" >Add</button>
                </td>
            </tr>
        </tbody>
    </table>
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
