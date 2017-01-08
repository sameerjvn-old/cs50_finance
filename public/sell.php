<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        render("sell_form.php", ["title" => "Sell" ]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if (empty($_POST["sellsym"]))
        {
            apologize("You must select a stock to sell.");
        }
        
        $sell = CS50::query("SELECT * FROM portfolio WHERE id = ? AND symbol = ?", $_SESSION["id"], $_POST["sellsym"] );
        $stock = lookup($_POST["sellsym"]);
        $profit = $sell[0]["shares"] * $stock["price"];
        $time = CS50::query("SELECT now() as a");
        $transaction = "SELL";
        CS50::query("INSERT INTO history (id, Transaction, Date, Symbol, Shares, Price) VALUES (?, ?, ?, ?, ?, ?)", $_SESSION["id"], $transaction, $time[0][a] , $stock["symbol"], $sell[0]["shares"] , $stock["price"]);
        CS50::query("DELETE FROM portfolio WHERE user_id = ? AND symbol = ?", $_SESSION["id"], $_POST["sellsym"] );
        CS50::query("UPDATE users SET cash = cash + ? WHERE id = ?" , $profit, $_SESSION["id"]);
        
        redirect("/");
    } 
?>