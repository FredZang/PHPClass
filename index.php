<?php 
    session_start();
	function __autoload($class_name) 
    {
        //class directories
        $directorys = array(
            'app/controller/',
            'app/model/'
        );
        //for each directory
        foreach($directorys as $directory)
        {
            if(file_exists($directory.$class_name . '.php'))
            {
                require_once($directory.$class_name . '.php');
                return;
            }            
        }
    }
    include "mail.php";
    
	$c_name = "Home_Controller";
	$action = "index";

	if(isset($_GET["c_name"])) $c_name = $_GET["c_name"];
	if(isset($_GET["action"])) $action = $_GET["action"];

	$controller = new $c_name();
	$controller->$action();

?>