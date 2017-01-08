<div>
  <table class="table" style="text-align: left">
      <thead>
        <tr>
        <th>Transaction</th>
        <th>Date</th>
        <th>Symbol</th>
        <th>Shares</th>
        <th>Price</th>
        </tr>
      </thead>
      
        <?php 
        foreach ($rows as $row): ?>
          <tr>
            <td><?= $row["Transaction"] ?></td>
            <td><?= $row["Date"] ?></td>
            <td><?= $row["Symbol"] ?></td>
            <td><?= $row["Shares"] ?></td>
            <td>$<?= number_format($row["Price"], 2, '.', ' ') ?></td>
          </tr>
        <?php endforeach ?>
      
  </table>
</div>