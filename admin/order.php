<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Sales History
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Sales</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
           <!-- <div class="box-header with-border">
              <div class="pull-right">
                <form method="POST" class="form-inline" action="sales_print.php">
                  <div class="input-group">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" class="form-control pull-right col-sm-8" id="reservation" name="date_range">
                  </div>
                  <button type="submit" class="btn btn-success btn-sm btn-flat" name="print"><span class="glyphicon glyphicon-print"></span> Print</button>
                </form>
              </div>
            </div>-->
            <div class="box-body">
              <table id="example1" class="table table-bordered">
                <thead>
                  <th class="hidden"></th>
                  <th>Order ID</th>
                  <th>Buyer Name</th>
                  <th>Transaction#</th>
                  <th>Amount</th>
                  <th>Status</th>
                  <th>Action</th>
                </thead>
                <tbody>
                  <?php
                    $conn = $pdo->open();
					
					if(isset($_POST["submit"])){
						$Pid=($_POST["ID"]); 
						$sql3="UPDATE `checkout` SET   `role`=1 WHERE ID='$Pid'";
						if($conn->query($sql3)){
							
							$sql = "select * from checkout WHERE ID=$Pid";
							$res = $conn->query($sql);
							 foreach($res as $trow){
								  $u_id = $trow['userID'];
								  $tran = $trow['transaction'];
								   $today = date('Y-m-d');
								  $sql2 = "insert into sales (`user_id`,`pay_id`,`sales_date`) values ('$u_id','$tran','$today')";
								  $conn->query($sql2);
							}
											
							echo("Delivered Confirmed");
						}else{
							echo("Database error");
						}
					}
					
					
					
					
					$sql="SELECT * FROM `checkout`";
                     $result = $conn->query($sql);
		//if($result->num_rows > 0){
				foreach($result as $row){
				$id=$row["ID"];
				$uid=$row["userID"];
				$amount=$row["amount"];
				$transaction=$row["transaction"];
				$role=$row["role"];
					?>
					<tr>
						<td>O<?=$id?>
						
						</td>
					 
						<?php 
						$sql2="SELECT * FROM `users` WHERE id ='$uid' AND type =0";
					 $result1 = $conn->query($sql2);
					foreach($result1 as $row){
						$user=$row['email'];
					}
						?>
						<td><?=$user?></td>
						<td><?=$transaction?></td>
						<td><?=$amount?></td>
						<td><?php if($role==0){
							echo("undelivered");
						}else{
							echo("Delivered");
						} ?></td>
							<td><form action="" method="post">
							<input type="hidden" value="<?=$id?>" name="ID">
							<input type="submit" name="submit" value="Deliver" class="btn btn-primary" <?php if($role==1){?> disabled <?php } ?>></form></td>
					</tr>
					
					<?php
				}
		//}
					

                    $pdo->close();
                  ?>
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
     
  </div>
  	<?php include 'includes/footer.php'; ?>
    <?php include '../includes/profile_modal.php'; ?>

</div>
<!-- ./wrapper -->

<?php include 'includes/scripts.php'; ?>
<!-- Date Picker -->


</body>
</html>
