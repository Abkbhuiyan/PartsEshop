<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php include 'email.php'; ?>
 <center>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

     
      <?php
			$conn = $pdo->open();
			if(isset($_POST["submit"])){
				$name=$_POST["name"];
				$email=$_POST["email"];
				$subject=$_POST["sub"];
				$msg=$_POST["msg"];
				
				$sql="INSERT INTO `contact`( `name`, `email`, `subject`, `comment`) VALUES ( '$name','$email','$subject','$msg')";
				if($conn->query($sql)){
					$to="shaharufs@gmail.com";
					$msg.="<br/> For any query: ".$email;
					sendmail($to,$subject,$msg);
					echo("Submitted successfully");
					
				}else{
					echo("Database error");
				}
			
			}
			
			
			
	?>
	      <!-- Main content -->
	      <section class="content">
	        <div class="row " style="margin: auto 0px; display: inline;">
	        	<form class="form-group" style="width: 50%" method="post" action="">
				<label><h2><u>Please Use the Contact Form on This Page to Reach Us:</u></h2></label></br>
	        		<label>Your Name</label>
	        		<input class="form-control" type="text" name="name" required>
	        		<label>Your Email</label>
	        		<input class="form-control" type="email" name="email" required>
	        		<label>Subject</label>
	        		<input class="form-control" type="text" name="sub" required>
	        		<label>Post Your Message</label>
	        		<textarea class="form-control" name="msg" required></textarea>
	        		<input type="submit" name="submit" value="Submit" class="btn btn-primary" style="margin-top: 10px;">
	        	</form>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</center>
</html>