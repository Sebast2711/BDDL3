<!DOCTYPE html>
<html>
<head>
	<title>Page php activite</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/chambre.css">
</head>
<body>


<?php
	
	$num = $_POST['Numero'];
	
	session_start();
	$idc = $_SESSION['id'];



	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);

	

	$requete = "INSERT INTO reserverchambre (id, n_reservation) VALUES ('$idc', '$num')";
	$result = $link -> query ($requete);

			echo "<nav>
		<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	         <ul>
			        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
			        <li><a href=\"voyage.php#pagev\">Voyage</a></li>
			        <li><a href=\"hotel.php#pageh\">Hotel</a></li>
			        <li><a href=\"activite.php#pagea\">Activite</a></li>
			        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>
			        
			      </ul>
				</nav>";


	echo "<h2>Felicitations vous avez reservez votre chambre d'hotel</h2>"







?>

</body>
</html>