<div style="text-align: center">
  <table>
      <tr><b>
        <td>Symbol</td>
        <td>Name</td>
        <td>Shares</td>
        <td>Price</td>
        <td>TOTAL</td>
      </b></tr>
      
      <?php foreach ($positions as $position): ?>
      <tr>
        <td><?= $position["symbol"] ?></td>
        <td><?= $position["name"] ?></td>
        <td><?= $position["shares"] ?></td>
        <td>$<?= $position["price"] ?></td>
        <td>$<?= number_format($position["price"], 2) ?></td>
      </tr>
      <?php endforeach ?>
      
      <tr>
        <td>Cash</td>
        <td></td>
        <td></td>
        <td></td>
        <td>$<?= number_format($cash, 2) ?></td>
        </tr>
  </table>
</div>