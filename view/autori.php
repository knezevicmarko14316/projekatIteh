<!DOCTYPE html>
<html lang="sr">
<head>
	<meta charset="UTF-8">
	<title>E-knjižara</title>
	<script src="../js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="../style/style.css" />
	<link rel="icon" type="image/png" href="../favicon.png">

	<style>
	#dobrodosli{
		font-family: Comic Sans MS;
		font-size: 30px;
		top: 80px;
		left: 140px;
		position: absolute;
		background: rgba(255,0,0,0.3);
		}
	</style>
		<script>
		window.onload = function(){
			ucitajAutore();
		};
		function ucitajAutore(){
			$.getJSON('../operacije/servis2.php', function(data) {
			$.each (data.autori, function(i,autor){
				console.log(autor.ImeA);
				$("#autoriT tbody").append('<tr><td>'+autor.ImeA+'</td><td>'+autor.PrezimeA+'</td><td>'+autor.brojNapisanihKnjiga+'</td></tr>');
			})
			})
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function () {
		$("#searchA").click(function(){
		var broj = document.getElementById("poljePretragaA").value;
		$("#autoriT tr:gt(0)").remove();
		$.getJSON('../operacije/servis2.php', { "uslov": broj }, function(data) {
			$.each (data.autori, function(i,autor){
				$("#autoriT tbody").append('<tr><td>'+autor.ImeA+'</td><td>'+autor.PrezimeA+'</td><td>'+autor.brojNapisanihKnjiga+'</td></tr>');
			})
			})

		
});
});
</script>
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
			<br>
				Prikazi autore brojem napisanih knjiga vecim ili jednakim od:
  				<input type="text" id="poljePretragaA" name="poljeZaPretraguA" required>
  				<input type="submit" value="Pronadji" id="searchA">
			<table id="autoriT">
			<thead>
				<tr>
					<th>Ime </th>
					<th>Prezime</th>
					<th>Broj napisanih knjiga</th>
				</tr>
			</thead>
			<tbody>

			</tbody>	
			</table>
			

		</div>
		
	</div>
</body>
</html>