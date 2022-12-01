    <!DOCTYPE html>
<html>
<head> <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Grand+Hotel&display=swap" rel="stylesheet"> </head>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container bg-dark">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
        </ol>
    </nav>
    <div class="row gy-3 ">
        <?php global $products ?>
        <?php foreach ($products as $producten): ?>
            <div class="col-sm-4 col-md-3">
                <div class="card">
                    <div class="card-body bg-gradient  text-center">
                        <a href="/product/<?= $producten->id ?>">
                            <img class="product-img img-responsive center-block img-fix" src='/img/<?= $producten->img ?>'/>
                        </a>
                        <div class="card-title mb-3"><?= $producten->name ?></div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>

    </div>

    <hr class="bg-light">
    <?php
    include_once('defaults/footer.php');

    ?>
</div>

</body>
</html>

