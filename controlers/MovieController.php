<?php

require 'models/MovieModel.php';


// rendu du template


// page d'accueil
function moviesCtrl() {
    global $twig;
    $movies = getAllMovies();

    //echo '<pre>'; var_dump($movies); echo '</pre>'; die()
    

    echo $twig->render('home.html', array(
        'movies' => $movies,
    ));
    
}

// page d'un film
function movieCtrl($id) {
    global $twig;
    $movie = getmovie($id);
    $genre = getgenre($id);
    $director = getdirector($id);
    $actor =  getactor($id);

    echo $twig->render('about.html', array(
        'movie' => $movie,
        'genre' => $genre,
        'actor' => $actor,
        'director' => $director,


    ));
}




?>