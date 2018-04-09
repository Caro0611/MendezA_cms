<?php
	include('connect.php');

	$tbl = $_POST['tbl'];
	$col = $_POST['col'];
	$id = $_POST['id'];
	unset($_POST['tbl']);
	unset($_POST['col']);
	unset($_POST['id']);
	unset($_POST['submit']);
	//echo count($_POST);
	
	$count=0;
	$cover = $_FILES['movies_cover'];
	
	if($_FILES['movies_cover']['type'] == "image/jpeg" || $_FILES['movies_cover']['type'] == "image/jpg" ){
			$target = "../../images/{$cover['name']}";
			 if(move_uploaded_file($_FILES['movies_cover']['tmp_name'], $target)){
			 	
			 	$orig = "../../images/{$cover['name']}";
			 	$th_copy = "../../images/TH_{$cover['name']}";
			 	if(!copy($orig, $th_copy)){
			 		echo "Failed to copy";
			 	}
	}
}
$_POST['movies_cover']=$cover['name'];
$num = count($_POST);

	$qstring = "UPDATE {$tbl} SET ";
	foreach($_POST as $key => $value){
		$count++;
		if($count !=$num){
			$qstring .= $key."='".$value."',";
		}else{
			$qstring .= $key."='".$value."' ";
		}
	}
	$qstring .= "WHERE {$col}={$id}";
	
	$updatequery = mysqli_query($link, $qstring);
	if($updatequery){
		header("Location:../../index.php");
	}else{
		echo "There was a problem with the server, please contact the web admin...Adam";
	}
	mysqli_close($link);
?>