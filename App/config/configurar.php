<?php
//** Desarrollo */
    ini_set('display_errors',1);
    ini_set('display_startup_errors',1);
    error_reporting(E_ALL);
//** Desarrollo */


// Ruta de la aplicación	
define('RUTA_APP', dirname(dirname(__FILE__)));

// Ruta url, Ejemplo: http://localhost/atletismo
define('RUTA_URL', '/orientacion');

define('NOMBRE_SITIO', 'Web de Asesoria de Orientación');


// Configuración de la Base de Datos
define('DB_HOST', 'localhost');
define('DB_USUARIO', 'root');
define('DB_PASSWORD', '');
define('DB_NOMBRE', 'orientacion');


// Configuración de correo
define('EmailEmisor','noreply@cpifpbajoaragon.com');
define('EmailPass','kvAPuHCKX9NSDZts$$py');
define('Emisor','CPIFP Bajo Aragón');
define('Host','smtp.ionos.es');
define('SMTPSecure','TLS');
define('Puerto',587);
