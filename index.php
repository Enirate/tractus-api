<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php';
require 'dbHelper/dbhelper.php';

$datetime = date('');

$date = date('');

$app = new \Slim\App();

$db = new dbHelper;

// $app->get('/', function($request, $response, $args) {
//     echo 'Hello, good people';
// });

$app->get('/', function(Request $request, Response $response, array $args) {
    $response->write('Hello, world!');
    return $response;
});

$app->get('/wasibi/', function(Request $request, Response $response, array $args) {
    $response->write('Hello guy, dakun come here.');
    return $response;
});

$app->get('/isUser/{name}/{surname}', function($request, $response, $args) {
	$name = $args['name'];
	$surname = $args['surname'];
	$response->write("Hello ".$name." ".$surname);
});

$app->get('/hello/{name}', function ($request, $response, $args) {
    echo "Hello, " . $args['name'];
})->setName('hello');

$app->run();
?>