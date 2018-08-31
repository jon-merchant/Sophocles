<?php

    function pr ($val) {
        echo '<pre>';
        print_r($val);
        echo '</pre>';
    }

    function trunc8($text, $limit) {
        if (str_word_count($text, 0) > $limit) {
            $words = str_word_count($text, 2);
            $pos = array_keys($words);
            $text = substr($text, 0, $pos[$limit]) . '...';
        }
        return $text;
    }

    class help {

        //var $help;

        function getHelp($link) {
            $sql = "SELECT * FROM _help";
            $result = $link->query($sql);
            while($row = $result->fetch_assoc()){
                $h[$row["help_element"]] = $row;
            }
            $h = htmlspecialchars(json_encode($h), ENT_QUOTES, 'UTF-8');
            pr($h);
            $this->help = $h;
            //return $h;
        }
    }
  

?>