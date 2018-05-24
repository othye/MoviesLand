<?php

    require('connect.php');

    $list = $connect->query("SELECT * FROM movies ");
        
        
    $movie = $connect->prepare('SELECT * FROM movies WHERE id ="$id"');
    
    $movie -> execute(array());
    

    $genre = $connect->prepare('SELECT * FROM genres AS g, genres_movies AS x WHERE g.id LIKE x.genres_id AND x.movies_id = "1" ');
    
    $genre -> execute(array());


    $actor = $connect->prepare('SELECT * FROM  actors AS a, movies_actors as y WHERE a.id LIKE y.actors_id AND  y.movies_id ="1"');
    
    $actor -> execute(array());

    $director = $connect->prepare('SELECT * FROM  directors AS d, movies_directors AS z WHERE d.id LIKE z.directors_id AND  z.movies_id ="1"');
    
    $director -> execute(array());


   

            


?>