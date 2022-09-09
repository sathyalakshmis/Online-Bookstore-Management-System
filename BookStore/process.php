<?php
	session_start();

	$_SESSION['err'] = 1;
	foreach($_POST as $key => $value){
		if(trim($value) == ''){
			$_SESSION['err'] = 0;
		}
		break;
	}

	if($_SESSION['err'] == 0){
		header("Location: purchase.php");
	} else {
		unset($_SESSION['err']);
	}
	require_once "./functions/database_functions.php";
	$title = "Purchase Process";
	require "./template/header.php";
	$conn = db_connect();
	extract($_SESSION['ship']);

	$card_number = $_POST['card_number'];
	$card_PID = $_POST['card_PID'];
	$card_expire = strtotime($_POST['card_expire']);
	$card_owner = $_POST['card_owner'];

    $customerid = getCustomerId($name, $address, $city, $zip_code, $state);
	if($customerid == null) {
		$cid=uniqid();
		insertCustomerId($cid, $name, $address, $city, $zip_code, $state);
		$customerid = getCustomerId($name, $address, $city, $zip_code, $state);
	}
	$customerid = getCustomerId($name, $address, $city, $zip_code, $state);
	$oid = uniqid();
	$date = date("Y-m-d H:i:s");
	$total=0;
	insertIntoOrder($conn, $oid , $customerid, $_SESSION['total_price'], $date, $name, $address, $city, $zip_code, $state);

	$orderid = getOrderId($conn, $customerid);
	foreach($_SESSION['cart'] as $isbn => $qty){
		$bookprice = getbookprice($isbn);
		$query = "INSERT INTO order_items VALUES 
		('$orderid', '$isbn', '$bookprice', '$qty')";
		$result = mysqli_query($conn, $query);
		if(!$result){
			echo "Insert value false!" . mysqli_error($conn2);
			exit;
		}
	}
	session_unset();
?>
	<p class="lead text-success">Your order has been processed successfully.</p>
<?php
	if(isset($conn)){
		mysqli_close($conn);
	}
?>