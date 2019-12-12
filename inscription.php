<!DOCTYPE html>
<html>
<head>
	<title>Page php</title>
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
.


	if (isset ($_POST['prem']) )
		$premium = 1;
	
	else $premium = 0;		


	if ("$mdp" == "$cmdp"){}
		else {
			echo "<a href='form_inscription.html#page'> Retourner sur la page d'inscription</a> ";
			die();		
		}
		
	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {
	    die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);
	}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);


	$query = "INSERT INTO client (nom, prenom, adresse, telephone, email, pseudo, motdepasse ) VALUES ('$nom', '$prenom', '$adresse', $telephone, '$email', '$pseudo', '$mdp') ";

	$result = $link->query ($query) or die("Erreur Insertion: " . $link->error); 


	$query = "UPDATE client SET premium = '$premium' WHERE email = '$email'";

	$result = $link->query ($query) or die("Erreur Update: " . $link->error); 
	echo "update OK";

	$link->close();

	
?>

</body>
</html>



