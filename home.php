<!DOCTYPE html>
<html lang="sr">
<head>
	<meta charset="UTF-8">
	<title>E-knjižara</title>

	<link rel="stylesheet" type="text/css" href="style/style.css" />
	<link rel="icon" type="image/png" href="favicon.png">
	<style>
	#dobrodosli{
		font-family: Comic Sans MS;
		font-size: 30px;
		top: 50px;
		left: 215px;
		position: absolute;
		background: rgba(255,0,0,0.3);
		}
	</style>
	
<body>
	<div id="wrap">
		
		<div id="meni">	
			<ul> 
				<li><a href="home.php">Početna</a></li> 
				<li><a href="./view/knjige.php">Knjige</a></li>
				<li><a href="./view/autori.php">Autori</a></li> 
				<li><a href="./view/kontakt.php">Kontakt</a></li> 
				<li><a href="./view/komentari.php">Komentari</a></li>
				<li><a href="./view/lokacija.php">Lokacija</a></li>
				<li><a href="./view/glasanje.php">Glas za knjigu dana</a></li>
				<li><a href="prodavnica2/index.php">E-prodavnica</a></li>
				<li><a href="./view/login.php">LogIn</a></li>
 
			</ul>
		</div>
		<div id="content">
			<p id="dobrodosli"align="justify"><b>Dobrodošli ljubitelji knjiga!</b> <br> E-K NJ I Ž A R A</p>
		</div>
		<div id="pretraga">	
			<p id="pronadji"align="justify"><b> Da li zelite da pronadjete odredjenu knjigu? <a href="./view/pretraga.php"> <br>PRETRAZI KNJIGU!</a> </br>
			</p>
			
		</div>
		<div id="pdf">
			<p id="pravilo" align="justify"><b>Pravilo koriscenja sajta:</b>
				<a href="pdfpravilnik.php" target="blank"><br>PRAVILNIK(PDF)
				</a></p></div>
		

	</div>
</body>
</html>