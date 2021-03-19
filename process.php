<?php
$servername='localhost';
$username='root';
$password='';
$dbname = "trading";
$conn=mysqli_connect($servername,$username,$password,"$dbname");
if(!$conn){
	die('Could not Connect My Sql:' .mysql_error());
}
$query = mysqli_query($conn,"SELECT AVG(rating) as AVGRATE from rating_data where status=1");
$row = mysqli_fetch_array($query);
$AVGRATE=$row['AVGRATE'];
$query = mysqli_query($conn,"SELECT count(rating) as Total from rating_data where status=1");
$row = mysqli_fetch_array($query);
$Total=$row['Total'];
$query = mysqli_query($conn,"SELECT count(remark) as Totalreview from  rating_data where status=1");
$row = mysqli_fetch_array($query);
$Total_review=$row['Totalreview'];
$review = mysqli_query($conn,"SELECT remark,rating,email from rating_data where status=1 order by date_time desc limit 4 ");
$rating = mysqli_query($conn,"SELECT count(*) as Total,rating from rating_data group by rating order by rating desc");

if(@isset($_POST['Submit'])){


	$sql = mysqli_query($conn,"INSERT into rating_data set remark='".$_POST['remark']."', rating='".$_POST['rating']."', email='".$_POST['email']."', status='1'");

	header("Location:http://server/kshama/rating/");

}

if(isset($_POST['update'])){
	$updateSql = "UPDATE rating_data set remark='".$_POST['remark']."', rating='".$_POST['rating']."', email='".$_POST['']."'"
}
?>