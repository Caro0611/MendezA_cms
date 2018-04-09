<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit All</title>
</head>
<body>
	<?php
	if(isset($_GET['movie_id'])){
		echo single_edit("tbl_movies","movies_id",$_GET['movie_id']);
		//phpinfo();
	}else{
		print "<h1> Edit Movies </h1>";
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
		if(!is_string($getMovies)){
		while($row = mysqli_fetch_array($getMovies)){
			echo "
			<a href=admin_editall.php?movie_id={$row['movies_id']}>	{$row['movies_title']} - {$row['movies_year']} </a><br>
	
			";
		}
	}else{
		echo "<p class=\"error\">{$getMovies}</p>";
	}
	}
	?>
</body>
</html>