<!DOCTYPE html>
<html>
<head>
	<title>Page de connexion bis</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
</head>

<body>

<?php

	$pseudo=$_POST['Pseudo'];
	$mdp=$_POST['MotDePasse'];	

	



	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {
	    die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);
	}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);


	$query = "INSERT INTO client (nom, prenom, adresse, telephone, email, pseudo, motdepasse ) VALUES ('$nom', '$prenom', '$adresse', $telephone, '$email', '$pseudo', '$mdp') ";

	$result = $link->query ($query) or die("Erreur Insertion: " . $link->error); 



	$link->close();

	
?>






</body>
</html>