<!DOCTYPE html>
<html>
<head>
	<title>Page php</title>
	<link rel="stylesheet" type="text/css" href="CSS/inscription.css">
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
</head>
<body>

<?php

	$nom=$_POST['Nom'];
	$prenom=$_POST['Prenom']; 
	$adresse=$_POST['Adresse'];
	$telephone=$_POST['Telephone'];
	$email=$_POST['Email'];
	$pseudo=$_POST['Pseudo'];
	$mdp=$_POST['MotDePasse'];	
	$cmdp=$_POST['ConfMotDePasse'];


	if (isset ($_POST['prem']) )
		$premium = 1;
	else $premium = 0;		

	if ("$mdp" == "$cmdp"){}
		else {
			echo "<p> Desole mais la confirmation du mot de passe est mauvaise</p> <a href='form_inscription.html#page'>Retourner sur la page d'inscription</a> ";
			die();		
		}
		
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);


	$query = "INSERT INTO client (nom, prenom, adresse, telephone, email, pseudo, motdepasse, premium ) VALUES ('$nom', '$prenom', '$adresse', $telephone, '$email', '$pseudo', '$mdp', '$premium') ";
	$result = $link->query ($query) or die("Erreur Insertion: " . $link->error); 
	$query = "UPDATE client SET premium = '$premium' WHERE email = '$email'";
	$result = $link->query ($query) or die("Erreur Update: " . $link->error); 


	echo "
	<nav>
		<label class=\"logo\">SisS</label>
	      <ul>
	        <li><a href=\"index.html#Pageprincipale\">Accueil</a></li>
	        <li><a href=\"voyage.html#pagedevoyage\">Voyages</a></li>
	        <li><a href=\"hotel.html#pagedhotel\">Hotel</a></li>
	        <li><a href=`\"activite.html#pagedactivite\">Activite</a></li>    
	      </ul>
	</nav>";
	echo "<p>Merci pour votre inscription</p>";
	echo "<a href = \"index.html#Pageprincipale\"> Retour sur la page principale</a>";


	$link->close();

	
?>

</body>
</html>



