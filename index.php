
<?php

    require_once './controlers/MovieController.php';
    
    switch ($_GET['page']) {

    // Home page
    case 'home':
        moviesCtrl();
    break;

    // About page
    case 'about':
        movieCtrl($_GET['id']);
    break;

    // // Everything else
    // default:
    //     header('HTTP/1.0 404 Not Found');
    //     require './views/error.php';
    // break;
        
    }


    //require 'models/request.php';
    /*require 'vendor/autoload.php';

    // rendu du template
    $loader = new Twig_Loader_Filesystem(__DIR__ . '/templates');
    $twig = new Twig_Environment($loader, [
        'cache' => false,   
        'debug' => true,

    ]);
    $twig->addExtension(new Twig_Extension_Debug());

    

    echo $twig->render('home.html', array(
        
    )); */



   

    //echo '<pre>'; var_dump($data3['name']); echo '</pre>'; die();





?>