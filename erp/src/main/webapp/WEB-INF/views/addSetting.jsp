<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings Master</title>
    <link rel="stylesheet" href="style.css"> <!-- Link to your CSS file if needed -->
    
    <style>
        /* Main body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f7fb;
            margin: 0;
            padding: 0;
        }
        
        /* Main container */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
        }
        
        /* Header styles */
        .header {
            font-size: 24px;
            font-weight: bold;
            color: #3a3a3a;
            margin-bottom: 15px;
        }
        
        /* Form container styling */
        .form-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        /* Form input field and labels */
        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: bold;
            color: #8a51c2; /* Matches the purple color of the labels */
            margin-bottom: 8px;
        }

        .form-group input, 
        .form-group select {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            color: #333;
            background-color: #f8f9fb;
            outline: none;
            transition: all 0.2s ease;
        }

        /* Input focus effect */
        .form-group input:focus, 
        .form-group select:focus {
            border-color: #8a51c2;
            box-shadow: 0 0 5px rgba(138, 81, 194, 0.2);
        }

        /* Add button styling */
        .add-button {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.2s ease;
            grid-column: span 2; /* Full width in the grid layout */
            width: 100px;
        }

        .add-button:hover {
            background-color: #45a049;
        }
  
        
        /* Additional layout adjustments for responsiveness */
        @media (max-width: 768px) {
            .form-container {
                grid-template-columns: 1fr;
            }
        }
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
