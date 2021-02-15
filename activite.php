<!DOCTYPE html>
<html>
<head>
	<title>Page php activite</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/activite.css">
</head>
<body>

<a id = 'pagea'> </a>

<?php
	
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);

	session_start();
	$requete = "SELECT * FROM activite";
	$result = $link -> query ($requete);

		echo "<nav>
		<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	         
		      <ul>
		        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
		        <li><a href=\"voyage.php#pagev\">Voyage</a></li>
		        <li><a href=\"hotel.php#pageh\">Hotel</a></li>
		        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>		        
		      </ul>
			</nav>";



	echo "<form method = 'post' action = 'resactivite.php' >";

	echo "<table border = '1'>";
	echo "	<tr>
				<td>Nom de l'activite</td> 
				<td>Nom de l'accompagnateur </td>
				<td>Duree (en minutes) </td>
				<td>Prix</td>
				<td>Ville</td>
				<td>Image</td>
			</tr>";

	while ($donnees = mysqli_fetch_object($result)){
		echo "<tr><td> $donnees->nom</td>";
		echo "<td>$donnees->nomAccompagnateur</td>";
		echo "<td> $donnees->duree</td>" ;
		echo "<td> $donnees->prix</td>" ;
		echo "<td> $donnees->ville</td>" ;
		echo "<td> <img alt = 'image' src = '$donnees->url'/></td>";
		echo "<td><input type = 'submit' name = 'Nom' value = '$donnees->nom '/><td>";
		echo "</tr>";
	}

	echo "</form>";

?>

</body>
</html>