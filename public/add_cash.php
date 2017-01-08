<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("add_cash_form.php", ["title" => "Add Cash"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if (empty($_POST["add"]))
        {
            apologize("You must enter an amount.");
        }
        
        
        CS50::query("UPDATE users SET cash = cash + ? WHERE id = ?", $_POST["add"], $_SESSION["id"]);
        redirect("index.php");
    }

?>