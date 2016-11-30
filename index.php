<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php';
require 'dbHelper/dbhelper.php';

$datetime = date('Y-m-d H:i:s');

$date = date('Y-m-d');

$app = new \Slim\App();

$db = new dbHelper;



$app->get('/', function(Request $request, Response $response, array $args) {
    $response->write('Hello, world!');
    return $response;
});


//Api to register user on tractus.
$app->post('/regUser', function($request, $response, $args) use($db, $datetime){
	$name = $request->getParam('userName');
	$email = $request->getParam('userEmail');
	$phone = $request->getParam('userPhone');
	$location = $request->getParam('userLocation');
	$occupation = $request->getParam('userOcc');

	//Validation will be here

	$result = $db->insert('users',array('u_name'=>"$name", 'u_phone'=>"$phone", 'u_email'=>"$email", 'u_location'=>"$location", 'u_type'=>"$occupation", 'u_reg_at'=>"$datetime"), array());

	return json_encode($result);

});

$app->run();
?>