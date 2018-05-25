<?php

    require 'models/connect.php';


    function getAllMovies() {
        
        require 'models/connect.php';

        //$list = $connect->query("SELECT * FROM movies ");
        $list = $connect->prepare('SELECT * FROM movies');
    
        $list -> execute(array());

        $datas =$list->fetchAll();
        
        return $datas;
    }

    

    function getmovie($id){

        require 'models/connect.php';


        $choix = $connect->prepare("SELECT * FROM movies WHERE id =".$id);

        $choix -> execute(array());

        $data =$choix->fetch();
        
        return $data;
    }

    function getgenre($id){

        require 'models/connect.php';


        $genre = $connect->prepare("SELECT * FROM genres AS g, genres_movies AS x WHERE g.id LIKE x.genres_id AND x.movies_id = ".$id);

        $genre -> execute(array());

        $data =$genre->fetchAll();
        
        return $data;
    }

    function getdirector($id){

        require 'models/connect.php';


        $director = $connect->prepare("SELECT * FROM  directors AS d, movies_directors AS z WHERE d.id LIKE z.directors_id AND  z.movies_id =".$id);
    
        $director -> execute(array());
    
        $data =$director->fetchAll();
        
        return $data;
    }

    function getactor($id){

        require 'models/connect.php';


        $actor = $connect->prepare("SELECT * FROM  actors AS a, movies_actors as y WHERE a.id LIKE y.actors_id AND  y.movies_id =".$id);
    
        $actor -> execute(array());
    
        $data =$actor->fetchAll();
        
        return $data;
    }