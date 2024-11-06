<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yarn Master</title>
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
            <jsp:include page="pageheader.jsp"></jsp:include>
            <!-- form Data -->
        <form action="yourServletURL" method="post" class="form-container">
            <div class="form-group">
                <label for="yanName">Name</label>
                <input type="text" id="yanName" name="yanName" placeholder="Yan Name">
            </div>
            <div class="form-group">
                <label for="units">Units</label>
                <input type="text" id="units" name="units" placeholder="Units">
            </div>
            <div class="form-group">
                <label for="counts">Counts</label>
                <select id="counts" name="counts">
                    <option value="">Please Select</option>
                    <option value="count1">Count 1</option>
                    <option value="count2">Count 2</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="types">Types</label>
                <input type="text" id="types" name="types" placeholder="Types">
            </div>
            <div class="form-group">
                <label for="conversion">Conversion</label>
                <input type="text" id="conversion" name="conversion" placeholder="Setting Name">
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
