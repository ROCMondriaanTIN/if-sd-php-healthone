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
    <div class="container">
        <div class="row">
            <div class="col-md-6 bg-dark">
                <h3 class="text-white"><?php echo $product->name?></h3>
                <img class="img-fluid img-thumbnail" style="width: 85%" src='/img/<?= $product->img ?>'/>
            </div>
            <div class="col-md-6 bg-dark pt-5">
                <p class="text-white"><?php echo $product->description?></p><br>
                <p class="text-white">€<?php echo $product->price?>,-</p>
            </div>
        </div>
    </div>


    <hr class="bg-light">
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>
