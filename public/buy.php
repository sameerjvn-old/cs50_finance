<?php

    // configuration
    require("../includes/config.php"); 

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("buy_form.php", ["title" => "Buy"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if (empty($_POST["symbol"]))
        {
            apologize("You must enter a stock symbol.");
        }
        if (empty($_POST["shares"]))
        {
            apologize("You must enter a number of shares.");
        }
       
        $stock = lookup($_POST["symbol"]);
       
        if (!preg_match("/^\d+$/", $_POST["shares"]))
        {
            apologize("You must enter a positive whole number of shares.");
        }
        
        if ( $stock === false )
        {
            apologize("You must enter a valid symbol.");
        }
        
        $stock["symbol"] = strtoupper($stock["symbol"]);
        
        $loss = $_POST["shares"] * $stock["price"];
        
        $rows = CS50::query("SELECT * FROM users WHERE id = ?", $_SESSION["id"]);
        $bal = $rows[0]["cash"];   
            
        if ($loss>$bal)
            {
                apologize("You cannot afford this purchase.");
            }
        
        CS50::query("INSERT INTO portfolio (user_id, symbol, shares) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE shares = shares + VALUES (shares)", $_SESSION["id"], $stock["symbol"], $_POST["shares"]);
        CS50::query("UPDATE users SET cash = cash - ? WHERE id = ?", $loss, $_SESSION["id"]);
    
        redirect("/");
    }

?>