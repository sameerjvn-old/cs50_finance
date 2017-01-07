<?php

    // configuration
    require("../includes/config.php"); 
    
    $rows = CS50::query("SELECT symbol, shares FROM portfolio WHERE user_id = ?" , $_SESSION["id"]);
    $positions = [];

    $spent = 0;

    foreach( $rows as $row)
    {
        $stock = lookup($row["symbol"]);
        if ($stock !== false)
        {
            $positions[] = [
            "name" => $stock["name"],
            "price" => $stock["price"],
            "shares" => $row["shares"],
            "symbol" => $row["symbol"],
            "total" => $stock["price"] * $row["shares"]
            ];
        }
        $spent+= $stock["price"] * $row["shares"];
    }
    
    $cash = 10000 - $spent;
    

    // render portfolio
    render("portfolio.php", ["positions" => $positions, "title" => "Portfolio", "cash" => $cash] );

?>
