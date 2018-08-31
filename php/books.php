<?php

    class books {
        var $author;
        var $books;
        var $book;
        
        function getBooks($author,$link) {
            $this->author = $author;
            $sql = "SELECT * FROM _books WHERE book_author = ".$this->author;   
            $result = $link->query($sql);
            $idx = 0;
            while($row = $result->fetch_assoc()){
                $bArray[$idx] = $row;
                $idx++;
            }
            foreach($bArray as $key=>$value) {
               $bArray[$key]["chapters"] = $this->getChapters($bArray[$key]["book_id"],$link);
               $bArray[$key]["characters"] = $this->getCharacters($bArray[$key]["book_id"],$link);
               $bArray[$key]["worlds"] = $this->getUniverses($bArray[$key]["book_id"],$link);
               $bArray[$key]["genre"] = $this->getGenres($bArray[$key]["book_genre"],$link);
            }
            //pr($bArray);
            $this->books = $bArray;
        }
        function getBook($book,$link) {
            //pr($book);
            $sql = "SELECT * FROM _books WHERE book_value = '".$book."'";
            
            $result = $link->query($sql);
            while($row = $result->fetch_assoc()) {
                $this->book = $row;
            }
        }
        function getChapters($book,$link) {
            
            $sql = "SELECT * FROM _chapters  WHERE book_id = ".$book;
            $result = $link->query($sql);
            //pr($result);
            $idx = 0;
            while($row = $result->fetch_assoc()) {
                $chapters[$idx] = $row;
                $idx++;
            }
            return $chapters;
        }
        function getCharacters($book,$link) {
            $sql = "SELECT * FROM _characters WHERE  JSON_CONTAINS(book_ids,'".$book."')";
            $result = $link->query($sql);
            $idx = 0;
            while($row = $result->fetch_assoc()) {
                $characters[$idx] = $row;
                $idx++;
            }
            return $characters;
        }
        function getUniverses($book,$link) {
            $sql = "SELECT * FROM _worlds WHERE universe_id = (SELECT universe_id FROM _universes WHERE JSON_CONTAINS(book_ids,'".$book."'))";
            $result = $link->query($sql);
            $idx = 0;
            while($row = $result->fetch_assoc()) {
                $worlds[$idx] = $row;
                $idx++;
            }
            return $worlds;
        }
        function getGenres($genre,$link) {
            $sql = "SELECT * FROM _genres WHERE genre_id = '".$genre."'";
            //pr($sql);
            $result = $link->query($sql);
            while($row = $result->fetch_assoc()) {
                //pr($row);
                $genre = $row;
                
            }
            return $genre;
        }
        function getstoryBaords($book,$link) {
            $sql = "SELECT * FROM _storyboards WHERE book_id= '".$book."' ORDER BY sb_position asc";
            $result = $link->query($sql);
            while($row = $result->fetch_assoc()) {
                $je = htmlspecialchars(json_encode($row["sb_text"]), ENT_QUOTES, 'UTF-8');
                //pr($je);
                $html .= "<div id='draggable".$row["sb_position"]."' class='ui-state-default sortable'><div class='sb_box'><span class='sortable-label'><a data-toggle='modal' data-target='#storyboardModal' data-id='draggable".$row["sb_position"]."' data-sbLabel='".$row["sb_label"]."' data-sbText='".$je."'>".$row["sb_label"]."</a></span></div></div>";
            }
            $html .= "<div id='draggable0' class='ui-state-default unsortable'><div class='sb_box'><a data-id='draggable0' data-toggle='modal' data-target='#storyboardModal' data-sbLabel='Add New Storyboard' data-sbText=''>Add</a></div></div>";
           
            return $html;
        }
        
        function getBookCards($books) {
            foreach($books as $key=>$value) {
                foreach($value as $k=>$v) {
                    $html .= "<div class='col-lg-4'>";
                    $html .= "<div class='card'>";
                    //$html .= '<div class="ribbon ribbon-top-left"><span>'.$v["genre"]["genre_label"].'</span></div>';
                    $html .= "<div class='view overlay' style='background-image: url(books/assets/".$v["book_image"].");'>";
                    $html .= "<div class='genre-overlay'><span class='".$v["genre"]["genre_font"]."'>".$v["genre"]["genre_label"]."</span></div>";
                    $html .= "<a>";
                    $html .= "<div class='mask rgba-white-slight'></div>";
                    $html .= "</a>";
                    $html .= "</div>";
                    $html .= '<a href="books/book.php?book='.$v["book_value"].'" class="btn-floating btn-action ml-auto mr-4 mdb-color lighten-3"><i class="fa fa-chevron-right pl-1"></i></a>';
                    $html .= '<div class="card-body">';
                    $html .= '<h4 class="card-title">'.$v["book_label"].'</h4>';
                    $html .= '<hr>';
                    $html .= '<p class="card-text">'.trunc8($v["book_plot"],25).'</p>';
                    
                    $html .= '</div>';
                    $html .= '<div class="rounded-bottom mdb-color lighten-3 text-center pt-3">';
                    $html .= '<ul class="list-unstyled list-inline font-small">';
                    $html .= '<li class="list-inline-item pr-2 white-text" data-toggle="tooltip" data-placement="top" title="'.count($v["chapters"]).' Chapters"><i class="fa fa-files-o" aria-hidden="true"></i></i> '.count($v["chapters"]).'</li>';
                    $html .= '<li class="list-inline-item pr-2 white-text" data-toggle="tooltip" data-placement="top" title="'.count($v["characters"]).' Characters"><i class="fa fa-users" aria-hidden="true"></i> '.count($v["characters"]).'</li>';
                    $html .= '<li class="list-inline-item pr-2 white-text" data-toggle="tooltip" data-placement="top" title="'.count($v["worlds"]).' Worlds"><i class="fa fa-globe" aria-hidden="true"></i> '.count($v["worlds"]).'</li>';
                    $html .= '</ul>';
                    $html .= '</div>';
                    $html .= "</div>";
                    $html .= '</div>';
                    $html .= '<div class="clearfix visible-lg"></div>';
                }
            }
            return $html;
        }
        function getBookPage($book,$link) {
            //pr($book);
            $genre = $this->getGenres($book->book["book_genre"],$link);
            $sb = $this->getstoryBaords($book->book["book_id"],$link);
            //pr($sb);
            //pr($genre);
            $html .= "<div class='col-lg-12'>";
            $html .= "<div class='card'>";
            $html .= "<div class='view overlay' style='background-image: url(books/assets/".$book->book["book_image"].");'>";
            $html .= "<div class='book-info'><h1 class='".$genre["genre_font"]."'>".$book->book["book_label"]."</h1></div>";
            $html .= "<a>";
            $html .= "<div class='mask rgba-white-slight'></div>";
            $html .= "</a>";
            //$html .= "<div class='book-header' style='background-image: url(books/assets/".$book->book["book_image"].");'>";
            //$html .= "<div class='book-info'>";
            //$html .= "<h1 class='".$genre["genre_font"]."'>".$book->book["book_label"]."</h1>";
            //$html .= "<div class='book-plot'>".trunc8($book->book["book_plot"],200)."</div>";
            //$html .= "</div>";
            //$html .= "</div>";
            $html .= "</div>";
            $html .= '<div class="card-body">';
            $html .= "<h4>Storyboards <span class='help-icon' data-toggle='modal' data-target='#helpModal' data-element='storyboard'><i class='fa fa-question-circle' aria-hidden='true'></i></span></h4>";
            $html .= '<div id="storyboard" class="clearfix">'.$sb.'</div>';
            
            //$html .= '<h4 class="card-title">sdfsdfsdfsdf</h4>';
            $html .= '<hr>';
            $html .= '<p class="card-text"></p>';
            $html .= "</div>";
            $html .= '</div>';

            $html .= "</div>";
            $html .= '<div class="modal fade" id="storyboardModal" role="dialog">';
            $html .= '<div class="modal-dialog modal-lg">';
            $html .= '<div class="modal-content">';
            $html .= '<div class="modal-header">';
            $html .= '<h5 class="modal-title" id="exampleModalLabel"></h5>';
            $html .= '<button type="button" class="close" data-dismiss="modal">&times;</button>';
            $html .= '</div>';
            $html .= '<div class="modal-body">';
            $html .= '<textarea id="editor" name="editordata"></textarea>';
            $html .= '</div>';
            $html .= '<div class="modal-footer">';
            $html .= '<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button> <button type="button" id="saveBtn" class="btn btn-primary">Save changes</button>';
            $html .= '</div>';
            $html .= '</div>';
            $html .= '</div>';
            $html .= '</div>';
            $html .= '</div>';  

            
            return $html;
        }
        
    }
    

?>