<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
  
</head>
<body>

<div class="container-fluid">
    <div class="row">
    <!-- Sidebar -->
  <jsp:include page="sidebar.jsp"></jsp:include>


        <!-- Main Content -->
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
            <!-- Top Bar -->
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </div>

            <!-- Metrics Cards -->
            <div class="row">
                <div class="col-md-3">
                    <div class="card text-center bg-light">
                        <div class="card-body">
                            <h5 class="card-title">Today Expenses</h5>
                            <p class="card-text display-4">8500</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center bg-light">
                        <div class="card-body">
                            <h5 class="card-title">Income Detail</h5>
                            <p class="card-text display-4">7800</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center bg-light">
                        <div class="card-body">
                            <h5 class="card-title">Task Completed</h5>
                            <p class="card-text display-4">500</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center bg-light">
                        <div class="card-body">
                            <h5 class="card-title">Customer Feedback</h5>
                            <p class="card-text display-4">650</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sales Overview Chart -->
            <div class="mt-4">
                <h4>Sales Overview</h4>
                <canvas id="salesChart"></canvas>
            </div>
        </main>
    </div>
</div>



</body>
</html>
