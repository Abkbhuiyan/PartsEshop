<?php include 'includes/session.php';
	$conn = $pdo->open();
?>

<?php
$Pid="";
$cartquantity="";
$quantity_decrease="";
if(isset($_POST["Submit"])){
    $txt=$_POST["amount"];
    $id=$_SESSION['user'];
    $Pid=$_SESSION["totalamout"];
    $cartquantity=$_SESSION["cartquantity"];
    $productId=$_SESSION["productId"];
    $productquantity=$_SESSION["productquantity"];
    $quantity_decrease=$productquantity - $cartquantity;


    if($txt == ""){
        $txt="cash on delivery";

        $sql="INSERT INTO `checkout`( `userID`, `amount`, `transaction`) VALUES ('$id','$Pid','$txt')";

        $sqlupdate = "UPDATE products
							SET
							quantity = '$quantity_decrease'
							WHERE id = $productId";
        $conn->query($sqlupdate);


        $sql1="DELETE FROM cart WHERE user_id= '$id'";
        $conn->query($sql1);

        if($conn->query($sql)){
            //echo("Your order is confirmed");
            $o_id = $conn->lastInsertId();
            echo $o_id;

            header("location: address.php?order_id=".$o_id."");
            $_SESSION["cartquantity"]=0;
        }else{
            echo("Database error");
        }

    }else{
        if(strlen($txt)!=10){

            echo "Transaction ID Can not be more or less than 10 digit.";

        }else{

            $sql="INSERT INTO `checkout`( `userID`, `amount`, `transaction`) VALUES ('$id','$Pid','$txt')";

            $sqlupdate = "UPDATE products
								SET
								quantity = '$quantity_decrease'
								WHERE id = $productId";
            $conn->query($sqlupdate);


            $sql1="DELETE FROM cart WHERE user_id= '$id'";
            $conn->query($sql1);

            if($conn->query($sql)){
                echo("Your order is confirmed");
                $_SESSION["cartquantity"]=0;
            }else{
                echo("Database error");
            }

        }


    }


}

?>

<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<?php include 'includes/scripts.php'; ?>
		<?php include 'includes/navbar.php'; ?>
		
		<div class="content-wrapper">
			<div class="container">

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-sm-9">
							<h1 class="page-header">Checkout</h1><hr/>
							<h4>Your Total amount is <?=$_SESSION["TotalAmount"]?>. Please send this amount on this Bkash\Rocket number (01911223344) OR Select the on cash delevery option.</h4>
							<h5><?php if(@$mes !=""){ echo $mes;}?></h5>
							<div class="form-group">
								<form method="post" action="">
									<input type="text" name="amount" id="amount" class="form-control col-sm-4" onKeyUp="myFunction()" style="margin-bottom: 10px;">
									<input type="checkbox" name="cash" id="myCheck" onclick="myFunction()" value="Cash on delivery">Cash on delivery <br/>
									<button style="margin-top: 10px;" disabled class="btn btn-primary" id="confirmBtn" type="submit" name="Submit" onclick="Checking()" >Confirm</button>
									
								</form>
							</div>
							<div>
								
								
							</div>
						</div>
						<div class="col-sm-3">
							<?php include 'includes/sidebar.php'; ?>
						</div>
					</div>
				</section>
				
			</div>
		</div>
		<?php $pdo->close(); ?>
		<?php include 'includes/footer.php'; ?>
	</div>
	
	
	<script>
		function myFunction() {
			// Get the checkbox
			var checkBox = document.getElementById("myCheck");
			var amount = $("#amount");
			// Get the output text
			var btn = $("#confirmBtn");
			
			// If the checkbox is checked, display the output text 
			if ((checkBox.checked == true) || (amount.val()!="" )){
				btn.removeAttr('disabled');
				} else {
				btn.attr('disabled','disabled');
			}
		}
		
		function Checking(){
			
		}
	</script>
	
</body>
</html>