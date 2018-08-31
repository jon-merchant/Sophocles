<?php
    $sql = "SELECT * FROM _site";

    $result = $link->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        $site = new stdClass();
        while($row = $result->fetch_assoc()) {
            $site->name = $row["site_name"];
            $site->brand_image = $row["brand_image"];
            //echo "id: " . $row["nav_id"]. " - Name: " . $row["menu_label"]. " " . $row["menu_value"]. "<br>";
        }
    } 


?>  