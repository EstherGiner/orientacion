<?php

    // include 'PHPMailer.php';
    // include 'SMTP.php';
    //include 'Exception.php';

    final class EnviarEmail{

        private static $email = EmailEmisor;
        private static $emailPass = EmailPass;
        private static $emisor = Emisor;
        private static $host = Host;
        private static $smtpsecure = SMTPSecure;
        private static $puerto = Puerto;
        
        public function __construct(){
            
        }

        public static function sendEmail($to,$nombreTo,$asunto,$cuerpo)
        {
            $mail = new PHPMailer(true);
    
            try {
                
                $mail->isSMTP();  
                           
                $mail->Host       = self::$host;                    // Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
                $mail->Username   = self::$email;  
                                // SMTP username
                $mail->Password   = self::$emailPass;                               // SMTP password
                $mail->SMTPSecure = self::$smtpsecure;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                $mail->Port       = self::$puerto;
                $mail->CharSet = 'UTF-8';
                $mail->setFrom(self::$email, self::$emisor);
                $mail->addAddress($to, $nombreTo);
                $mail->addReplyTo(self::$email, self::$emisor);
                    
                // Content
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = $asunto;
                $mail->Body    = $cuerpo;
                $mail->send();
                $respuesta='1';
              
                
            } catch (Exception $e) {
                $respuesta= $mail->ErrorInfo;
              
             }
             
             return $respuesta;
        }



        public static function sendEmailMultiple($to,$nombreTo,$asunto,$cuerpo){
            $mail = new PHPMailer(true);
    
            try {
                $mail->isSMTP();  
                
                $mail->Host       = self::$host;                    // Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   // Enable SMTP authentication

                $mail->Username   = self::$email;  
                $mail->Password   = self::$emailPass;                               // SMTP password

                $mail->SMTPSecure = self::$smtpsecure;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                $mail->Port       = self::$puerto;
    
                $mail->CharSet = 'UTF-8';

                $mail->setFrom(self::$email, self::$emisor);
                for ($i=0; $i < count($to) ; $i++) { 
                    $mail->addAddress($to[$i], $nombreTo[$i]);
                }
                $mail->addReplyTo(self::$email, self::$emisor);
                
                // Content
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = $asunto;
                $mail->Body    = $cuerpo;

                $mail->send();
                
                $respuesta='1';
                
            } catch (Exception $e) {
                $respuesta= $mail->ErrorInfo;
             }
             
             return $respuesta;
         }
    
    }