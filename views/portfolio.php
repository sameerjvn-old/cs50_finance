<div>
  <table class="table table-striped" style="text-align: left">
      <thead>
        <tr>
        <th>Symbol</th>
        <th>Name</th>
        <th>Shares</th>
        <th>Price</th>
        <th>TOTAL</th>
        </tr>
      </thead>
      
        <?php foreach ($positions as $position): ?>
          <tr>
            <td><?= $position["symbol"] ?></td>
            <td><?= $position["name"] ?></td>
            <td><?= $position["shares"] ?></td>
            <td>$<?= $position["price"] ?></td>
            <td>$<?= number_format($position["total"], 2) ?></td>
          </tr>
        <?php endforeach ?>
      
      
      <tr>
        <td>CASH</td>
        <td></td>
        <td></td>
        <td></td>
        <td>$<?= number_format($cash, 2) ?></td>
        </tr>
  </table>
</div>