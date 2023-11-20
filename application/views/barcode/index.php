<!-- application/views/barcode/index.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barcode Section</title>
</head>
<body>
    <h2>Barcode Section</h2>

    <!-- Flash message -->
    <?php if ($this->session->flashdata('message')) : ?>
        <p><?php echo $this->session->flashdata('message'); ?></p>
    <?php endif; ?>

    <!-- Barcode input form -->
    <form action="<?php echo base_url('barcode/checkOccupancy'); ?>" method="post">
        <label for="barcode_value">Enter Barcode:</label>
        <input type="text" name="barcode_value" required>
        <button type="submit">Check Occupancy</button>
    </form>
</body>
</html>
