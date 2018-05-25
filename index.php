
<?php

    require_once './controlers/MovieController.php';
    require 'vendor/autoload.php';

    define('BASE', preg_replace("!^{$_SERVER['DOCUMENT_ROOT']}!", '', __DIR__));
    $loader = new Twig_Loader_Filesystem('./views');
    $twig = new Twig_Environment($loader, [
        'cache' => false
    ]);

    $twig->addGlobal('BASE', BASE);
    $twig->addFunction(new \Twig_SimpleFunction('assets', function ($assets) {
        return sprintf(BASE.'/assets/%s', ltrim($assets, '/'));
    }));


    
    switch ($_GET['page']) {

        // Home page
        case 'home':
            moviesCtrl();
        break;

        // About page
        case 'about':
            movieCtrl($_GET['id']);
        break;

        //  Everything else
        default:
            header('HTTP/1.0 404 Not Found');
            require './views/error.php';
         break;
        
    }

?>