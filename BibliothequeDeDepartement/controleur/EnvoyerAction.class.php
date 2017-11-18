<?php
require_once('./controleur/Action.interface.php');
class EnvoyerAction implements Action {
	public function execute(){
            if (!ISSET($_SESSION)) session_start();
		if (!ISSET($_SESSION["connect"]))	//utilisateur non connect�.
                {return "login";}
                
     $v_email='nadianaouarsfar@gmail.com';
     $v_name='Nadia Naouar';
    
require_once('phpmailer/class.phpmailer.php');

	$mail = new PHPMailer();  // Cree un nouvel objet PHPMailer
	$mail->AddAddress($v_email,$v_name);
        $mail->IsHTML(true); // active SMTP
        $mail->Password = '******';                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587; 
        $mail->From=$v_email;
        
	$mail->FromName = $v_name;  // debogage: 1 = Erreurs et messages, 2 = messages seulement
	
        $mail->Subject = "test";
        $mail->Body = "<b>bienvenue nadia</b>";
     
	if(!$mail->Send()) {
		echo 'message non envoye';
	} else {
		echo 'message envoye';
	}
              
		return "envoiEmail";
	}
}
?>