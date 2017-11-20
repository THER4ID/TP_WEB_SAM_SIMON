<?php

require_once('./phpmailer/class.phpmailer.php');
define('nadianaouarsfar@gmail.com', 'nadianaouarsfar@gmail.com'); // utilisateur Gmail
define('eyouta2009', 'eyouta2009'); // Mot de passe Gmail
function smtpMailer($to, $from, $from_name, $subject, $body) {
	$mail = new PHPMailer();  // Cree un nouvel objet PHPMailer
	$mail->IsSMTP(); // active SMTP
	$mail->SMTPDebug = 0;  // debogage: 1 = Erreurs et messages, 2 = messages seulement
	$mail->SMTPAuth = true;  // Authentification SMTP active
	$mail->SMTPSecure = 'tls'; // Gmail REQUIERT Le transfert securise
	$mail->Host = 'smtp.gmail.com';
	$mail->Port = 587;
	$mail->Username = 'email';
	$mail->Password = "password";
	$mail->SetFrom("nadianaouarsfar@gmail.com", "nadia");
	$mail->Subject = "test";
	$mail->Body = "bienvenue nadia";
	$mail->AddAddress($to);
	if(!$mail->Send()) {
		return 'Mail error: '.$mail->ErrorInfo;
	} else {
		return true;
	}
}
$result = smtpmailer('nadianaouarsfar@gmail.com', 'nadianaouarsfar@gmail.com', 'nadia', 'salut c est un test', 'Le sujet de votre message');
if (true !== $result)
{
	// erreur -- traiter l'erreur
	echo $result;
}
