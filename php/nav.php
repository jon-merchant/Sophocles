<?php
    $authorID = 1;
    $sql = "SELECT * FROM _navigation WHERE level = 0";
    $result = $link->query($sql);
    $nav = "";
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            //pr($row["menu_value"]);
            if ($row["menu_value"] == "books") {
                //$nav .= "<li class='navbar-nav'><a class='nav-link' href='./?page=".$row["menu_value"]."'>".$row["menu_label"]."</a></li>";
                //$nav .= getBooks($authorID,$link);
                $nav .= getDrop($authorID,$link,"books");
            } else if ($row["menu_value"] == "characters") {
                $nav .= getDrop($authorID,$link,"characters");

            } else if ($row["menu_value"] == "universes") {
                $nav .= getDrop($authorID,$link,"universes");
            } else {
                $nav .= "<li class='nav-item'><a class='nav-link' href='./".$row["menu_value"]."/'>".$row["menu_label"]."</a></li>";
            }
            
        }
    }

    function getBooks($author,$link) {
        $sql = "SELECT * FROM _books WHERE book_author = ".$author;
        $result = $link->query($sql);
        if ($result->num_rows > 0) {
            $bd .= '<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Books</a>
            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">';
            $bd .= '<a class="dropdown-item" href="books/book.php?book=add"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add New</a>';
            while($row = $result->fetch_assoc()) {
                $bd .= '<a class="dropdown-item" href="books/book.php?book='.$row["book_value"].'"><i class="fa fa-book" aria-hidden="true"></i> '.$row["book_label"].'</a>';    
            }
            $bd .= '</div></li>';
        } else {
            $bd .= "<li class='navbar-nav'><a class='nav-item' href='books/'>Books</a></li>";
        }
        return $bd;
    }
    function getDrop($author,$link,$type) {
        $sqlType = "_".$type;
        switch ($type) {
            case "books":
                $base = "book";
                $icon = "fa-book";
                $rowValue = $base."_value";
                $rowLabel = $base."_label";
                
                break;
            case "characters":
                $base = "character";
                $rowValue = $base."_value";
                $rowLabel = $base."_label";
                $icon = "fa-user-circle";
                break;
            case "universe":
                $base = "universe";
                $rowValue = $base."_value";
                $rowLabel = $base."_label";
                $icon = "fa-globe";
                break;
        }
        
        $sql = "SELECT * FROM ".$sqlType." WHERE book_author = ".$author;
        $result = $link->query($sql);
        $bd .= '<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="'.$sqlType.'" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'.ucfirst($type).'</a>
            <div class="dropdown-menu dropdown-primary" aria-labelledby="'.$sqlType.'">';
            $bd .= '<a class="dropdown-item" href="'.$type.'/'.$base.'.php?'.$base.'=add"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add New</a>';
            
        if ($result && $result->num_rows > 0) {
            $bd .= '<a class="dropdown-item" href="'.$type.'"> <i class="fa fa-bars" aria-hidden="true"></i> Show All</a>';
            while($row = $result->fetch_assoc()) {
                $bd .= '<a class="dropdown-item" href="'.$type.'/'.$base.'.php?'.$base.'='.$row[$rowValue].'"><i class="fa fa-book" aria-hidden="true"></i> '.$row[$rowLabel].'</a>';    
            }
            
        }
        $bd .= '</div></li>';
        return $bd;
    }

    

?>