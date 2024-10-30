<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav id="sidebar" class="col-md-2 d-none d-md-block bg-dark sidebar">
            <div class="sidebar-sticky">
                <h3 class="text-white text-center py-4">TEXTIPRO</h3>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link active" href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-cogs"></i> Master</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-exchange-alt"></i> Transactions</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-calculator"></i> Accounts</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-puzzle-piece"></i> Widget</a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-chart-line"></i> Reports</a></li>
                </ul>
            </div>
        </nav>

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

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<!-- Chart.js for the Sales Chart -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/js/script.js"></script>

</body>
</html>
