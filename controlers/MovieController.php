<?php

require 'models/MovieModel.php';
require 'vendor/autoload.php';

    // rendu du template
   
    
    


// page d'accueil
function moviesCtrl() {
    
    $movies = getAllMovies();

    //echo '<pre>'; var_dump($movies); echo '</pre>'; die();
    
    // afficher la page via twig
    $loader = new Twig_Loader_Filesystem('views');
    $twig = new Twig_Environment($loader, [
        'cache' => false,   
        'debug' => true,

    ]);
    $twig->addExtension(new Twig_Extension_Debug());

    echo $twig->render('home.html', array(
        'movies' => $movies,
    ));
    
}

// page d'un film
function movieCtrl($id) {

    $movie = getmovie($id);
    $genre = getgenre($id);
    $director = getdirector($id);
    $actor =  getactor($id);

    $loader = new Twig_Loader_Filesystem('views');
    $twig = new Twig_Environment($loader, [
        'cache' => false,   
        'debug' => true,

    ]);
    $twig->addExtension(new Twig_Extension_Debug());

    echo $twig->render('about.html', array(
        'movie' => $movie,
        'genre' => $genre,
        'actor' => $actor,
        'director' => $director,


    ));
}




?>