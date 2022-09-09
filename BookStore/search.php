<?php
  $title = "Search";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  $conn = db_connect();
?>
<?php
include 'connect.php';
$searchErr = '';
$bk='';
if(isset($_POST['save']))
{
    if(!empty($_POST['search']))
    {
        $search = $_POST['search'];
        $stmt = $con->prepare("select * from books where book_title like '%$search%'");
        $stmt->execute();
        $bk = $stmt->fetchAll(PDO::FETCH_ASSOC);        
    }
    else
    {
        $searchErr = "Please enter the information";
    }    
}
?>
<html>
<head>
<title>Search</title>
<link rel="stylesheet" href="bootstrap.css" crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap-theme.css" crossorigin="anonymous">
<style>
.container{
    width:70%;
    height:30%;
    padding:20px;
}
</style>
</head>
<body>
    <div class="container">
    <br/><br/>
    <form class="form-horizontal" action="#" method="post">
    <div class="row">
        <div class="form-group">
            <label class="control-label col-sm-4" for="text"><b>Search Book By Title</b>:</label>
            <div class="col-sm-4">
              <input type="text" class="form-control" name="search" placeholder="search here">
            </div>
            <div class="col-sm-2">
              <button type="submit" name="save" class="btn btn-success btn-sm">Submit</button>
            </div>
        </div>
        <div class="form-group">
            <span class="error" style="color:red;">* <?php echo $searchErr;?></span>
        </div>         
    </div>
    </form>
    <br/><br/>
    <h3><u>Search Result</u></h3><br/>
    <div class="table-responsive">          
      <table class="table">
        <thead>
          <tr>
            <th>Sl.no</th>
            <th>Book ISBN</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Semester</th>
          </tr>
        </thead>
        <tbody>
                <?php
                 if(!$bk)
                 {
                    echo '<tr>No data found</tr>';
                 }
                 else{
                    foreach($bk as $key=>$value)
                    {
                        ?>
                    <tr>
                        <td><?php echo $key+1;?></td>
                        <td><?php echo $value['book_isbn'];?></td>
                        <td><?php echo $value['book_title'];?></td>
                        <td><?php echo $value['book_author'];?></td>
                        <td><?php echo $value['book_price'];?></td>
                        <td><?php echo $value['semid'];?></td>
                    </tr>    
                        <?php
                    }  
                 }
                ?>            
         </tbody>
      </table>
    </div>
</div>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap.min.js"></script>
</body>
</html>