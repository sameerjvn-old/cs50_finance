<?php 

    require("../includes/config.php");

    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        render("quote_form.php", ["title" => "Quote"]);
    }
    
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $stock = lookup($_POST["symbol"]);
        if ($stock === false)
        {
            apologize("Symbol not found.");
        }
        
        $stock["price"] = number_format($stock["price"], 2, '.' , ' ');
        
        render("quote_display.php", ["title" => "Quote" , "symbol" => $stock["symbol"] , "price" => $stock["price"] , "name" => $stock["name"]] );
        
    }
    
?>