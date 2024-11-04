<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yarn Master</title>
    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .content-header {
            background-color: #f8f9fa;
            padding: 15px;
        }
        .content-header h4 {
            margin: 0;
            font-weight: bold;
        }
        .table-container {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 20px;
        }
        .btn-edit {
            background-color: #28a745;
            color: #fff;
            font-weight: bold;
        }
        .btn-delete {
            background-color: #dc3545;
            color: #fff;
            font-weight: bold;
        }
        .breadcrumb {
            background: transparent;
            padding: 0;
            margin-bottom: 0;
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
                <h4>Yarn Master</h4>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Settings</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Add Yarn</li>
                    </ol>
                </nav>
            </div>

            <!-- Data Table -->
            <div class="table-container mt-4">
                <div class="d-flex justify-content-between mb-2">
                    <h5>Yarn Master</h5>
                    <div>
                        <label for="entries">Show</label>
                        <select id="entries" class="form-control d-inline-block" style="width: 70px;">
                            <option>10</option>
                            <option>25</option>
                            <option>50</option>
                        </select>
                        entries
                    </div>
                </div>

                <table class="table table-hover">
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
                        <tr>
                            <td>1</td>
                            <td>Test Yarn</td>
                            <td>0</td>
                            <td>100</td>
                            <td>Test Yarn</td>
                            <td>154.00</td>
                            <td>
                                <button class="btn btn-sm btn-edit">Edit</button>
                                <button class="btn btn-sm btn-delete">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Yarn3</td>
                            <td>4</td>
                            <td>Nos</td>
                            <td>Types</td>
                            <td>1.00</td>
                            <td>
                                <button class="btn btn-sm btn-edit">Edit</button>
                                <button class="btn btn-sm btn-delete">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Yarn2</td>
                            <td>3</td>
                            <td>Nos</td>
                            <td>Types</td>
                            <td>121.00</td>
                            <td>
                                <button class="btn btn-sm btn-edit">Edit</button>
                                <button class="btn btn-sm btn-delete">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Yarn1</td>
                            <td>12</td>
                            <td>Nos</td>
                            <td>Types</td>
                            <td>82.00</td>
                            <td>
                                <button class="btn btn-sm btn-edit">Edit</button>
                                <button class="btn btn-sm btn-delete">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- Pagination -->
                <div class="d-flex justify-content-between">
                    <span>Showing 1 to 4 of 4 entries</span>
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-sm">
                            <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </main>
    </div>
</div>


</body>
</html>
