<?php include 'includes/session.php'; ?>

<?php include 'includes/header.php'; ?>
<body class="hold-transition register-page">
<div class="register-box">
    <?php
    if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
    }

    if(isset($_SESSION['success'])){
        echo "
          <div class='callout callout-success text-center'>
            <p>".$_SESSION['success']."</p> 
          </div>
        ";
        unset($_SESSION['success']);
    }
    ?>
    <div class="register-box-body">
        <p class="login-box-msg">Please Give delivery address</p>
        <?php

        if(isset($_POST["Save"])){


            $o_id=$_POST["order_id"];
            $house=$_POST['house_no'];
            $street=$_POST['street'];
            $post=$_POST['post_code'];
            $police=$_POST['police'];
            $dis=$_POST['district'];

            $sql="INSERT INTO `delivery_address`( `order_id`, `house_no`,`street`, `post_code`,`police_stattion`,`district`) VALUES ('$o_id','$house',' $street','$post','$police','$dis')";


                if($conn->query($sql)){
                    echo("Your order is confirmed");

                }else{
                    echo("Database error");
                }




        }

        ?>
        <?php $o_id = $_GET['order_id'];?>
        <form action="#" method="POST">
            <input type="hidden" name="order_id" id="" value="<?php echo $o_id; ?>">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="house_no" placeholder="House No"  required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="street" placeholder="Street Address"  required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="post_code" placeholder="Post Code"  required>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="police" placeholder="Police Station" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="district" placeholder="District" required>
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat" name="Save"><i class="fa fa-pencil"></i> Save</button>
                </div>
            </div>
        </form>
        <br>
    </div>
</div>

<?php include 'includes/scripts.php' ?>
</body>
</html>