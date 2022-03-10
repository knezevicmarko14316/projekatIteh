<?php
if(isset($_GET['uslov'])){
	prikaziAutoreSaUslovom(filter_input(INPUT_GET,"uslov", FILTER_SANITIZE_NUMBER_INT));
}else{
 	prikaziSveAutore();
}

function prikaziSveAutore(){
	header("Content-type: application/json");?>{"autori":<?php
require_once "../konekcija.php";
$sql="SELECT ImeA, PrezimeA, brojNapisanihKnjiga FROM autori";
if (!$q=$mysqli->query($sql)){
echo '{"greska":"Nastala je greška pri izvršavanju upita."}';
exit();
} else {
if ($q->num_rows>0){
$niz = array();
while ($red=$q->fetch_object()){
$niz[] = $red;
}
$niz_json = json_encode ($niz);
print ($niz_json);
} else {
echo '{"greska":"Nema rezultata."}';
}
}
?>}<?php
}

function prikaziAutoreSaUslovom($uslov){
header("Content-type: application/json");?>{"autori":<?php
require_once "../konekcija.php";
$sql="SELECT ImeA, PrezimeA, brojNapisanihKnjiga FROM autori WHERE brojNapisanihKnjiga>='".$uslov."'";
if (!$q=$mysqli->query($sql)){
echo '{"greska":"Nastala je greška pri izvršavanju upita."}';
exit();
} else {
if ($q->num_rows>0){
$niz = array();
while ($red=$q->fetch_object()){
$niz[] = $red;
}
$niz_json = json_encode ($niz);
print ($niz_json);
} else {
echo '{"greska":"Nema rezultata."}';
}
}
?>}<?php
}
?>