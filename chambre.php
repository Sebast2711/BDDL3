<!DOCTYPE html>
<html>
<head>
	<title>Page php activite</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/chambre.css">
</head>
<body>

<?php
	
	session_start();


	$nom = $_POST['Nom'];
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);

	$requete = "SELECT * FROM chambre WHERE hotel = '$nom'";
	$result = $link -> query ($requete);

	echo "<nav>
		<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	         <ul>
		        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
		        <li><a href=\"voyage.php#pagev\">Voyage</a></li>
		        <li><a href=\"activite.php#pagea\">Activite</a></li>
		        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>		        
		      </ul>
		</nav>";





	echo "<form method = 'post' action = 'reschambre.php' >";

	echo "<table border = '1'>";
	echo "<caption>$nom</caption>";
	echo "	<tr>
				<td>Numero de la chambre</td> 
				<td>Nombre de lits</td>
				<td>Prix</td>
			<tr>";

	while ($donnees = mysqli_fetch_object($result)){
		echo "<tr><td> $donnees->numero</td>";
		echo "<td>$donnees->nb_lits</td>";
		echo "<td> $donnees->prix</td>" ;
		echo "<td> $donnees->hotel</td>" ;
		echo "<td><input type = 'submit' name = 'Numero' value = '$donnees->numero '/><td>";
		echo "</tr>";
	}

	echo "</form>";

?>

</body>
</html>