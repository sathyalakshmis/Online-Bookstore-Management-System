<?php
$servername='localhost';
$username="root";
$password="";
try
{
    $con=new PDO("mysql:host=$servername;dbname=www_project",$username,$password);
    $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo '<br>'.$e->getMessage();
}
?>