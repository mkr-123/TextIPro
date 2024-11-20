<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer/Customer Master</title>
    <link href="<c:url value='/css/listpage.css' />" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $().ready(function(){
    	$("#entries").val(${pageEnteries});
    	$("#pageNo").text(${pageNum+1});
    });
    
    function preOrNextPage(nextorPre){
    	/* if($("#pageNum").val()-1>=0 ){ */
    	if(nextorPre==1){
    		$("#pageNum").val(${pageNum+1});
    	}else{
    		$("#pageNum").val(${pageNum-1});
    	}  
    	$("#pageNo").text($("#pageNum").val());
    	$("#pageEnteries").val(${pageEnteries});
    	$("#entries").val(${pageEnteries});
    	$("#form").submit();
    	/* }else{
    	$("#pageNum").val(0);
    	 alert("page number can't be less than 0");
    	} */
    }
    
    function enteries(enteriesVal){
    	$("#pageNum").val(${pageNum});
    	$("#pageEnteries").val(enteriesVal);
    	$("#form").submit();
    }
    
    
    </script>

    <!-- Custom CSS -->
    <style>

    </style>
</head>
<body>
<form name="form" id="form" action="${pageContext.request.contextPath}/master/yarnList">
<input type="hidden" id="pageNum" name="pageNum" value=""/>
<input type="hidden" id="pageEnteries" name="pageEnteries" value=""/>
</form>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <jsp:include page="sidebar.jsp"></jsp:include>

        <!-- Main Content -->
        <main role="main" class="col-md-10 ml-sm-auto px-4">
            <!-- Page Header -->
            <div class="content-header d-flex justify-content-between align-items-center">
                <h4>Buyer/Customer Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/addBuyerCustomer">Add Buyer</a></li>
                    </ol>
                </nav>
            </div>

            <!-- Data Table -->
            <div class="table-container mt-4">
                <div class="d-flex justify-content-between mb-2">
                    <h5>Buyer/Customer Master</h5>
                    <div>
                        <label for="entries">Show</label>
                        <select id="entries"  class="form-control d-inline-block" style="width: 70px;" onchange="enteries(this.value)">
                        	<option value="1">1</option>
                        	<option value="2">2</option>
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                        </select>
                        entries
                    </div>
                </div>

                <table class="table table-hover" id="tableId">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Name</th>
                            <th>Counts</th>
                            <th>Units</th>
                            <th>Types</th>
                            <th>Conversions</th>
                            <th>Options</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="prevIndex" value="${index}"/>
                        <c:if test="${not empty yarnList}">
                        <c:forEach items="${yarnList}" var="yarnList">
                        <tr>
                            <td>${index=index+1}</td>
                            <td>${yarnList.yarnName}</td>
                            <td>${yarnList.commonSettingsForCounts.settingsName}</td>
                            <td>${yarnList.commonSettingsForUnits.settingsName}</td>
                            <td>${yarnList.commonSettingsForTypes.settingsName}</td>
                            <td>${yarnList.conversion}</td>
                            <td>
                                <a class="btn btn-sm btn-edit" href="${pageContext.request.contextPath}/master/yarnMasterEdit/${yarnList.yarnMasterId}">Edit</a>
                                <a class="btn btn-sm btn-edit" href="${pageContext.request.contextPath}/master/yarnMasterDelete/${yarnList.yarnMasterId}" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </c:if>
                        <c:if test="${empty yarnList}">
                        <tr id="empty_row">
                        </tr>
                        </c:if>
                    </tbody>
                </table>

                <!-- Pagination -->
                <div class="d-flex justify-content-between">
                    <span>Showing ${prevIndex+1} to<c:if test="${(pageEnteries+prevIndex) lt totalItems}"> ${pageEnteries+prevIndex}</c:if><c:if test="${(pageEnteries+prevIndex) ge totalItems}"> ${totalItems}</c:if> of ${totalItems} entries</span>
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-sm">
                            <li class="page-item "><a class="page-link" href="#" onclick="preOrNextPage(0)">Previous</a></li>
                            <li class="page-item active" ><a class="page-link" href="#" id="pageNo"></a></li>
                            <li class="page-item"><a class="page-link" href="#" onclick="preOrNextPage(1)">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </main>
    </div>
</div>


</body>
</html>
