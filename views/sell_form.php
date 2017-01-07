<div style="text-align: center">
    <form action="sell.php" method="post">
        <?
         $syms = CS50::query("SELECT DISTINCT symbol FROM `portfolio` WHERE 1");
        ?>
        
        <select name = "sellsym" class="form-control" placeholder="Symbol">
            <? foreach( $syms as $sym): ?>
            <option value= "<?= $sym ?>" ><?=$sym?></option>
            <? endforeach ?>
        </select>
        <input class="btn btn-default" type="submit" value="Sell">
        
    </form>
</div>