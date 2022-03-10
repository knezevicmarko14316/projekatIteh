<!DOCTYPE html>
<?php session_start(); ?>
<html lang="sr">
<head>
	<meta charset="utf-8">
	<title>E-knjižara</title>
	<link rel="icon" type="image/png" href="../favicon.png">
	<link rel="stylesheet" type="text/css" href="../style/style.css"/>
	<script src="../js/jquery.validate.js"></script>
	<?php require "../konekcija.php"; ?>
	<style type="text/css">
		.loginform{

		font-family: Comic Sans MS;
		font-size: 24px;
		top: 80px;
		left: 200px;
		position: absolute;
		background: rgba(255,0,0,0.3);
		}
		}
	</style>
</head>
<body>
	<div id="wrap">
		<div id="meni">
			<ul>
				<li><a href="../home.php">Početna</a></li> 
				<li><a href="knjige.php">Knjige</a></li>
				<li><a href="autori.php">Autori</a></li> 
				<li><a href="kontakt.php">Kontakt</a></li> 
				<li><a href="komentari.php">Komentari</a></li>
				<li><a href="lokacija.php">Lokacija</a></li>
				<li><a href="glasanje.php">Glas za knjigu dana</a></li>
				<li><a href="../prodavnica2/index.php">E-prodavnica</a></li> 
				<li><a href="login.php">LogIn</a></li> 

			</ul>
		</div>
		<div id="content">
			<section class="loginform">
				<form name="login" action="" method="post" accept-charset="utf-8">
					<ul>
						<li>Username:
							<input type="text" id="username" required></li>
						<li>Password: 
        					<input type="password" id="password"></li>
        				<li>
        					<input type="submit" value="LOGIN" onclick="formaDugme()"></li>	
					</ul>
				</form>
			</section>
			</form>
		</div>
	</div>
	<script>
		function formaDugme(){
			var user = document.getElementById('username').value;
			var pass = document.getElementById('password').value;
			if(user == "root" && pass == "root"){
				alert("Uspesno ste se ulogovali.");
				window.open("adminPanel.php");
			}
			else{
				alert("Pogresan username/password.");
			}

		}
	</script>
		<script>
		 $('#formica').validate();
	</script>

</body>
</html>