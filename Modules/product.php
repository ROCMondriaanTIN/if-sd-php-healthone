<?php

function getProduct($id)
{
    global $pdo;
    $query = $pdo->prepare('SELECT * FROM product WHERE id = :id');
    $query->bindParam('id', $id);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_CLASS, 'Product');
    return $result[0];
}

?>


