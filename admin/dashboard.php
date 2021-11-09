<?php include "src/validation_loggedin.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "includes/meta.php"; ?>
	<title>Dashboard | Analytics Dashboard | MIST Appointment System</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.11.2/b-2.0.0/b-colvis-2.0.0/b-html5-2.0.0/b-print-2.0.0/datatables.min.css"/>

</head>
<?php
	require 'src/countData.php';	
?>
<body>
	<div class="wrapper">
		<?php include "includes/sidebar.php"; ?>
		<div class="main">
		<?php include "includes/navbar.php"; ?>	

			<main class="content">
				<div class="container-fluid p-0">
				
					
					
				<div class="row">


				<?php
					if($_SESSION['advance_user_role'] == 1){
						echo '
						
						<h3 class="fw-300"><i class="align-middle h3" data-feather="eye"></i> Visual Representation of data</h3>
				<p class="text-muted">View the system data visually with their coresponding value.</p>
						

						<!-- Start Chart Line -->
						<div class="col-md-6 col-lg-6">
						<div class="col-12 col-lg-12">
							<div class="card flex-fill w-100 bg-dark" style="color: white !important;">
								<div class="card-header bg-primary">
									<h3 style="color: white !important;"><i class="align-middle" data-feather="git-pull-request"></i> Analytics of clients in a month.</h3>
									<p class="text-muted" style="color: white !important;">View the system data with the coresponding sections</p>


								</div>
								<div class="card-body">
									<div class="chart" style="color: white !important;">
										<canvas id="chartjs-line"></canvas>
									</div>
								</div>
							</div>
						</div>
						</div>

						

							
						<div class="col-md-6 col-lg-6">
						<div class="col-12 col-lg-12">
							<div class="card flex-fill w-100 bg-dark border-white" style="color: white !important;">
								<div class="card-header bg-primary" style="color: white !important;">
									<h3 style="color: white !important;"><i class="align-middle" data-feather="pie-chart"></i> Analytics of users browsers.</h3>
									<p class="text-muted" style="color: white !important;">View the system data with the coresponding sections</p>
								</div>
								<div class="card-body">
									<div class="chart">
										<canvas id="chartjs-doughnut"></canvas>
									</div>
								</div>
							</div>
						</div>
						</div>';
					}
				?>
						<!-- End Chart Line -->

						<h1 class="h3 mb-3">Dashboard Analytics</h1>
						<p>View the system data with the coresponding sections</p>

						<div class="col-md-12 col-xl-12 d-flex">
							<div class="w-100">
								<div class="row">

								<div class="col-sm-12">
										<div class="card bg-dark">
											<div class="card-body">
												<h3 class="mb-4" style="color: white !important; "><i class="align-end" data-feather="book"></i> Total amount money accumulated!
												</h3>
												<h1 class="mt-1 mb-3" style="color: white !important; font-size: 2rem; ">Peso (<?php echo $moneyAccumulated['money']; ?>.00)</h1>
												<div class="mb-1">
													<span class="text-muted">Amount of money </span>
												</div>
											</div>
										</div>
										
									</div>

									<div class="col-sm-6">
										<div class="card bg-dark">
											<div class="card-body">
												<h3 class="mb-4" style="color: white !important; "><i class="align-end" data-feather="book"></i> Appointment
												</h3>
												<h1 class="mt-1 mb-3" style="color: white !important; font-size: 2rem;"><?php echo $countAppointmentsRows; ?></h1>
												<div class="mb-1">
													<span class="text-muted">No. of reservations  </span>
												</div>
											</div>
										</div>
										<div class="card bg-warning">
											<div class="card-body">
												<h3 class="mb-4"><i class="align-middle" data-feather="user"></i> Client
												
												</h3>
												<h1 class="mt-1 mb-3" style="font-size: 2rem;"><?php echo $countClientRows; ?></h1>
												<div class="mb-1">
													<span class="text-muted" style="color: white !important;">No. of client in the system</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="card bg-primary">
											<div class="card-body">
												<h3 class="mb-4" style="color: white !important; "><i class="align-middle" data-feather="x-square"></i> Pending
												
												</h3>
												<h1 class="mt-1 mb-3" style="color: white !important; font-size: 2rem; "><?php echo $countPendingRows; ?></h1>
												<div class="mb-1">
													<span class="text-muted" style="color: white !important;">No. of pending reservation</span>
												</div>
											</div>
										</div>
										<div class="card bg-danger">
											<div class="card-body">
												<h3 class="mb-4" style="color: white !important; "><i class="align-middle" data-feather="check-square"></i> Approved 
												
												</h3>
												<h1 class="mt-1 mb-3" style="color: white !important; font-size: 2rem;"><?php echo $countApprovedRows; ?></h1>
												<div class="mb-1">
													<span class="text-muted" style="color: white !important; ">No. of approved reservations</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<hr>
						

						<div class="col-12 col-xl-6">
							<div class="card">
								<div class="card-header text-center">
									<h3>Client Reservations</h3>
									<h6 class="card-subtitle text-muted">First 10 appointments from the clients.</h6>
								</div>
								<div class="card-body table-responsive py-0">
									<table class="table table-bordered table-sm" id="appointment_data">
									<thead>
										<tr class="text-center">
											<th>Name</th>
											<th>Phone Number</th>
											<th class="d-none d-md-table-cell">Age</th>
										</tr>
									</thead>
									<tbody>
									<?php

										$getappointment = $conn->prepare("SELECT * FROM appointments  ORDER BY appointment_created ASC LIMIT 10");
										$getappointment->execute();
										$result = $getappointment->get_result();
										if($result->num_rows > 0){
											while ($row = $result->fetch_assoc()) {
												echo '
												<tr class="text-center">
													<td>'.$row['appointment_fullname'].'</td>
													<td>'.$row['phone'].'</td>
													<td class="d-none d-md-table-cell">'.$row['gender'].'</td>
													
												</tr>												
												';
											}
										}

									?>
										
										
										
										
									</tbody>
								</table>
								</div>
								
							</div>
						</div>

						<div class="col-12 col-xl-6">
							<div class="card">
								<div class="card-header text-center">
									<h3>User browser Information</h3>
									<h6 class="card-subtitle text-muted">Users browser.
									</h6>
								</div>
								<div class="card-body py-0">
									<table class="table table-bordered table-sm" id="logs">
									<thead>
										<tr class="text-center">
											<th>System</th>
											<th>IP Address</th>
											<th class="text-end">Device</th>
											<th class="text-end">Login Date</th>
										</tr>
									</thead>
									<tbody>
										<?php

										$getlogs = $conn->prepare("SELECT * FROM browser_logs ORDER BY loggedin_date ASC LIMIT 10");
										$getlogs->execute();
										$result = $getlogs->get_result();
										if($result->num_rows > 0){
											while ($row = $result->fetch_assoc()) {
												echo '
												<tr class="text-center">
													<td>'.$row['platform'].'</td>
													<td>'.$row['ip'].'</td>
													<td class="text-end">'.$row['device'].'</td>
													<td class="text-end">'.$row['loggedin_date'].'</td>
												</tr>												
												';
											}
										}

										?>
									</tbody>
								</table>
								</div>
								
							</div>
							
						</div>


					</div>

				</div>
			</main>

			<?php include "includes/footer.php"; ?>		
		</div>
	</div>

	<?php include "includes/script.php"; ?>
	
	<?php
		$browser_chrome = mysqli_query($conn, "SELECT * FROM browser_logs WHERE browser = 'Chrome'");
		$_1 = mysqli_num_rows($browser_chrome);


		$browser_firefox = mysqli_query($conn, "SELECT * FROM browser_logs WHERE browser = 'Firefox'");
		$_2 = mysqli_num_rows($browser_firefox);


		$browser_hand = mysqli_query($conn, "SELECT * FROM browser_logs WHERE browser = 'Android'");
		$count = mysqli_num_rows($browser_hand);
	?>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Doughnut chart
			new Chart(document.getElementById("chartjs-doughnut"), {
				type: "bar",
				data: {
					labels: ["Chrome","Firefox","Android Browser"],
					datasets: [{
						data: [<?php echo $_1; ?>,<?php echo $_2; ?>,<?php echo $count; ?>],
						backgroundColor: [
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#3a3afb',
							'#8416fe'
						],
						borderColor: "transparent"
					}]
				},
				options: {
					maintainAspectRatio: false,
					cutoutPercentage: 65,
					legend: {
						display: false
					}
				}
			});
		});

		</script>

		<?php
		$montly_client = mysqli_query($conn, "SELECT * FROM monthly_client");
		while ($row = mysqli_fetch_array($montly_client)) {
			$month[] = $row['month'];
			$client[] = $row['no_client'];

		}
		?>
		<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Line chart
			new Chart(document.getElementById("chartjs-line"), {
				type: "line",
				data: {
					labels: <?php echo json_encode($month); ?>,
					datasets: [{
						label: "Clients",
						fill: true,
						backgroundColor: [
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#8416fe',
							'#3a3afb',
							'#3a3afb',
							'#8416fe'
						],
						borderColor: window.theme.primary,
						data: <?php echo json_encode($client); ?>
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.05)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 500
							},
							display: true,
							borderDash: [5, 5],
							gridLines: {
								color: "rgba(0,0,0,0)",
								fontColor: "#fff"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		$(document).ready(function(){
			$("#appointment_data").DataTable({
				"paging":false,
				"searching": false
			});  
			$("#logs").DataTable({
				"paging":false,
				"searching": false
			}); 
		});
	</script>
	
</body>

</html>