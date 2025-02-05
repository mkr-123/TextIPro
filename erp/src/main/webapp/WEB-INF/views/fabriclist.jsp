<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fabric Master List</title>
     <link href="<c:url value='/css/listpage.css' />" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    const pageNum = ${pageNum};
    const pageEntries = ${pageEnteries};
    </script>

	<script src="${pageContext.request.contextPath}/js/listpage.js"></script>
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
                <h4>Fabric Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Settings</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/master/addFabric">Add Fabric</a></li>
                    </ol>
                </nav>
            </div>

            <!-- Data Table -->
            <div class="table-container mt-4">
                <div class="d-flex justify-content-between mb-2">
                    <h5>Fabric Master</h5>
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
                            <th>Fabric Code</th>
                            <th>Fabric Name</th>
                            <th>Weave</th>
                            <th>Quality</th>
                            <th>EPI</th>
                            <th>PPI</th>
                            <th>Gregie Width</th>
                            <th>Total end</th>
                            <th>GSM</th>
                            <th>GLM</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="prevIndex" value="${index}"/>
                        <c:if test="${not empty datalist}">
                        <c:forEach items="${datalist}" var="fabricList">
                        <tr>
                            <td>${index=index+1}</td>
                            <td>${fabricList.fabricCode}</td>
                            <td>${fabricList.fabricName}</td>
                            <td>${fabricList.commonSettingsForWeave.settingsName}</td>
                            <td>${fabricList.fabricQuality}</td>
                            <td>${fabricList.epi}</td>
                            <td>${fabricList.ppi}</td>
                            <td>${fabricList.greigeCode}</td>
                            <td>${fabricList.totalEnds}</td>
                            <td>${fabricList.glm}</td>
                            <td>${fabricList.gsm}</td>
                            <td>
                                <a class="btn btn-sm btn-edit" href="${pageContext.request.contextPath}/master/fabricMasterEdit/${fabricList.fabricId}">Edit</a>
                                <a class="btn btn-sm btn-edit" href="${pageContext.request.contextPath}/master/fabricMasterDelete/${fabricList.fabricId}" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </c:if>
                        <c:if test="${empty datalist}">
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
