<?php
/** Error reporting */
error_reporting(E_ALL);

/** Include PHPExcel */
require_once '../PHPExcel/PHPExcel.php';

/** Include Connection */
require_once 'db.inc.php';

$objPHPExcel = PHPExcel_IOFactory::load(str_replace('.php', '.xlsx', __FILE__));
$data = $objPHPExcel->getActiveSheet(1)->toArray();
	
try {
	$sql = "INSERT INTO dosen 
		SET id_prodi=:prodi, 
			id_fak=1, 
			id_univ=1, 
			nip=:nip, 
			nama=:nama, 
			username=:uname, 
			password=aes_encrypt('12345678', 'f1sh6uts'), 
			email=:email, 
			telp=:telp";
	$result = $pdo->prepare($sql);
	
	$idx=0;
	foreach ($data as $row) {

		($row[3] == "") ? $idx++ : '';

		$explode = explode(",", $row[4]);
		$nama = explode(".", $explode[0]);
		$count = count($nama);
		
		if($count>1) {
			$uname = strtolower(str_replace(" ", "", $nama[$count-1]));
		}
		else {
			$uname = strtolower(str_replace(" ", "", $nama[0]));
		}

		if(strlen($uname)<6) {
			$uname = $uname."_fsh";
		}	

		$result->bindValue(':prodi', $row[0]);
		$result->bindValue(':nip', ($row[3] == "") ? '' : $row[3]);
		$result->bindValue(':nama', $row[4]);
		$result->bindValue(':uname', $uname);
		$result->bindValue(':email', "");
		$result->bindValue(':telp', "");
		$result->execute();
	}
	
	echo ($result) ? "berhasil" : "gagal";
}
catch(PDOException $e) {
	$error = 'Error to insert. <pre>'.$e->getMessage().'</pre>';
	include 'error.html.php';
	exit();
}
?>
