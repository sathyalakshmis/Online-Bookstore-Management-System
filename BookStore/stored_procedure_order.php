<?php
$conn = mysqli_connect("localhost","root","","www_project") or die("Connection Failed");
?>
<?php
	 $sql = "CALL display_orders";
      $result = mysqli_query($conn, $sql) or die("Query Unsuccessful.");

      if(mysqli_num_rows($result) > 0)  {
    ?>
<h1> List Of Orders </h1>
<style>
table, th, td {
  border:2px solid black;
}
</style>
<table style="width:100%">
<table cellpadding="20px">
  <h2>                 </h2>
        <thead>
		<th>Order ID</th>
        <th>Customer ID</th>
        <th>Bill_amount</th>
        <th>Date</th>
        <th>Ship Name</th>
        <th>Address</th>
        <th>City</th>
        <th>Pincode</th>
        <th>State</th>

        </thead>
        <tbody>
          <?php
            while($row = mysqli_fetch_assoc($result)){
          ?>
            <tr>
                <td><?php echo $row['orderid']; ?></td>
                <td><?php echo $row['customerid']; ?></td>
                <td><?php echo $row['amount']; ?></td>
				<td><?php echo $row['date']; ?></td>
                <td><?php echo $row['ship_name']; ?></td>
                <td><?php echo $row['ship_address']; ?></td>
                <td><?php echo $row['ship_city']; ?></td>
                <td><?php echo $row['ship_zip_code']; ?></td>
                <td><?php echo $row['ship_state']; ?></td>
            </tr>
          <?php } ?>
        </tbody>
    </table>
  <?php }else{
    echo "<h2>No Record Found</h2>";
  }
  mysqli_close($conn);
  ?>
</div>
</div>
</body>
</html>