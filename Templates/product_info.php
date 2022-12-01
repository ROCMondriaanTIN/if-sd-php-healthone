<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<div class="container bg-dark">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/menu.php');
    include_once ('defaults/pictures.php');
    global $product;
    ?>
    <h3><?php echo $product->name?></h3>


    <hr class="bg-light">
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>
