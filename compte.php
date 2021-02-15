<!DOCTYPE html>
<html>
<head>
	<title>Page de compte php</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/compte.css">

</head>
<body>


	<a id = "Moncompte"></a>

<?php
	
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);

	session_start();
	$pseudo = $_SESSION['Pseudo'];
	

	$requete = "SELECT * FROM client WHERE pseudo = '$pseudo'";
	$result = mysqli_query($link ,$requete) or die ('Probleme resultat');

	$donnees = mysqli_fetch_assoc($result) or die ('Probleme fetch');
		

		echo "<nav>
		<label class=\"logo\"><img src=\"IMG/logo.png\" width=\"100\" height=\"100\"></label>
	         
		      <ul>
		        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
		        <li><a href=\"voyage.php#pagev\">Voyage</a></li>
		        <li><a href=\"hotel.php#pageh\">Hotel</a></li>
		        <li><a href=\"compte.php#Moncompte\">Mon Compte</a></li>		        
		      </ul>
			</nav>";

?>
	<table>

		<tr>
			<td><label>Nom</label></td>
			<td><?=$donnees['nom'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Prenom </label></td>
			<td><?=$donnees['prenom'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Adresse</label></td>
			<td><?=$donnees['adresse'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Telephone</label></td>
			<td><?=$donnees['telephone'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Email </label></td>
			<td><?=$donnees['email'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Pseudo </label></td>
			<td><?=$donnees['pseudo'] ?><br/></td>
		</tr>
		<tr>
			<td><label>Mot de passe </label></td>
			<td><?=$donnees['motdepasse'] ?><br/></td>
		</tr>
	</table>
	
	

<?php
	echo "<form method = 'post' action = 'deconnexion.php'> 
			    <div class= 'w'>
					<li><input type = 'submit' name = 'Deco' value = 'Deconnexion'/></li>
		    	</div>
		  </form>";



?>

</body>
</html>