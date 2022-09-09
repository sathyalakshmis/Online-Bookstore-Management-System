<?php
$conn = mysqli_connect("localhost","root","","www_project") or die("Connection Failed");
?>
<?php
	 $sql = "select * from books_deleted";
      $result = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
      if(mysqli_num_rows($result) > 0)  {
    ?>
<h1> List Of Books Deleted </h1>
<style>
table, th, td {
  border:2px solid black;
}
</style>
<table style="width:100%">
<table cellpadding="20px">
  <h2>        <h2>
        <thead>
		<th>Book_ISBN</th>
        <th>Book Title</th>
        <th>Book Price</th>
        <th>Date of Deletion</th>
        </thead>
        <tbody>
          <?php
            while($row = mysqli_fetch_assoc($result)){
          ?>
            <tr>
                <td><?php echo $row['book_isbn']; ?></td>
                <td><?php echo $row['book_title']; ?></td>
                <td><?php echo $row['book_price']; ?></td>
				<td><?php echo $row['delete_date']; ?></td>
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