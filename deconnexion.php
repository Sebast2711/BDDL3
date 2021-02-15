<!DOCTYPE html>
<html>
<head>
	<title>Page de compte php</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/compte.css">
	<link rel="stylesheet" type="text/css" href="CSS/index.css">

</head>
<body>


	<a id = "Moncompte"></a>

<?php

	session_start();	
	header('location:index.html');
	session_destroy();



?>

</body>
</html>