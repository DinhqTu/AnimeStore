<?php
    include("class/clshome.php");
	$p= new myhome();
// 	session_start();
	if(isset($_SESSION['myname']) && isset($_SESSION['mypass']) && isset($txt_name) && isset($txt_pass)){
		$p->confirmLogin("select * from user where name ='$txt_name' and password = '$txt_pass'",$_SESSION['myname'],$_SESSION['mypass']) ;
	}
?>