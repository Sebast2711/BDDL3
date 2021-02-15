<!DOCTYPE html>
<html>
<head>
	<title>Page de connexion php</title>
	<link rel="stylesheet" type="text/css" href="CSS/menu.css">
	<link rel="stylesheet" type="text/css" href="CSS/index.css">
	<link rel="stylesheet" type="text/css" href="CSS/connexion.css">
</head>

<body>

<?php


	$link = new mysqli('localhost', 'root', '');
	if ($link->connect_errno) {
	    die ("Erreur de connexion : errno: " . $link->errno . " error: " . $link->error);
	}
	$link->select_db('projetest') or die("Erreur selection BD: " . $link->error);


	session_start();

	if (isset ($_POST['Pseudo']) AND isset($_POST['MotDePasse'])){
		$pseudo=$_POST['Pseudo'];
		$mdp=$_POST['MotDePasse'];	
		$idc = $_POST ['id'];
	}


	$requete = "SELECT id, pseudo, motdepasse FROM client WHERE pseudo = '$pseudo' AND motdepasse = '$mdp'";
	$result = $link -> query($requete);


	while ($donnees = mysqli_fetch_object($result)){

		$_SESSION ['Pseudo'] = $donnees->pseudo;
		$_SESSION ['mdp'] = $donnees->motdepasse;
		$_SESSION ['id'] = $donnees->id;
	}


	if (!$result OR $_SESSION['Pseudo'] != $pseudo OR $_SESSION['mdp'] != $mdp  ){
		echo "<a href = 'form_connexion.html'> Revenir a la page de connexion </a> <br>"; 
		die ('Votre mot de passe ou votre pseudo est errone ' );
	}





	echo "<h1>Bienvenue $pseudo </h1><br>";

	echo "	<div class = 'w >'
			<li><input type=button onclick=window.location.href=\"index.html\"; value= \"Accueil\"/> </li>
			<li><input type=button onclick=window.location.href=\"voyage.php\"; value= \"Voyage\"/> </li>
			<li><input type=button onclick=window.location.href=\"activite.php\"; value= \"Activite\"/> </li>
    		<li><input type=button onclick=window.location.href=\"hotel.php\"; value= \"Hotel\"/> </li>
    		<li><input type=button onclick=window.location.href=\"compte.php\"; value= \"Mon compte\"/> </li> </div>";










	$link->close();
?>






</body>
</html>