
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

?>