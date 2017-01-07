<?php

    // configuration
    require("../includes/config.php"); 
    
    $rows = CS50::query("SELECT symbol, shares FROM portfolio WHERE user_id = ?" , $_SESSION["id"]);

    // render portfolio
    render("portfolio.php", ["title" => "Portfolio"]);

?>
