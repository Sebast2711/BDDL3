<!DOCTYPE html>
<html>
<head>
	<title>Page php activite</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/voyage.css">
</head>
<body>

<a id = 'pagev'> </a>

<?php
	
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);


	session_start();
	$requete = "SELECT * FROM voyage";
	$result = $link -> query ($requete);

	echo "<nav>
	<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	      <ul>
	        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
	        <li><a href=\"hotel.php#pageh\">Hotel</a></li>
	        <li><a href=\"activite.php#pagea\">Activite</a></li>
	        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>
	        
	      </ul>
		</nav>";

	echo "<form method = 'post' action = 'resvoyage.php' >";
	echo "<table border = '1'>";

	while ($donnees = mysqli_fetch_object($result)){
		echo "<tr><td> $donnees->nomVilleDepart</td>";
		echo "<td>$donnees->nomVilleArrive</td>";
		echo "<td> $donnees->dateDepart</td>" ;
		echo "<td> $donnees->dateArrive</td>" ;
		echo "<td> $donnees->typeTransport</td>" ;
		echo "<td> $donnees->prix</td>" ;
		echo "<td><input type = 'submit' name = 'Numero' value = '$donnees->n_reservation '/><td>";
		echo "</tr>";
	}

	echo "</form>";

?>

</body>
</html>