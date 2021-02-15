<!DOCTYPE html>
<html>
<head>
	<title>Page php activite</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/hotel.css">
</head>
<body>

<a id = 'pageh'> </a>




<?php
	
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);



	$requete = "SELECT * FROM hotel";
	$result = $link -> query ($requete);

	session_start();
	
	echo "<nav>
		<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	         <ul>
		        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
		        <li><a href=\"voyage.php#pagev\">Voyage</a></li>
		        <li><a href=\"activite.php#pagea\">Activite</a></li>
		        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>		        
		      </ul>
			</nav>";




	echo "<form method = 'post' action = 'chambre.php' >";

	echo "<table border = '1'>";
	echo "	<tr>
				<td>Nom de l'hotel</td> 
				<td>Nombre de chambre</td>
				<td>Nombre d'etoile </td>
				<td>Lieu</td>
				<td>Image</td>
				<td> Cliquez pour voir les chambres </td>
			</tr>";

	while ($donnees = mysqli_fetch_object($result)){
		echo "<tr><td> $donnees->nom</td>";
		echo "<td>$donnees->nb_chambre</td>";
		echo "<td> $donnees->nb_etoiles</td>" ;
		echo "<td> $donnees->lieu</td>" ;
		echo "<td> <img alt = 'image' src = '$donnees->url'/></td>";
		echo "<td><input type = 'submit' name = 'Nom' value = '$donnees->nom' /><td>";
		echo "</tr>";
	}

	echo "</form>";






?>

</body>
</html>