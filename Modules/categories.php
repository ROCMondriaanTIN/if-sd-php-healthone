<?php

function getCategories():array
{
    global $pdo;
    $categories = $pdo->query('SELECT * FROM category')->fetchAll(PDO::FETCH_CLASS, 'Category');
    return $categories;
}

function getCategory(int $id):array
{
    global $pdo;
    $products = $pdo->query('SELECT * FROM product WHERE category_id = ' . $id)->fetchAll(PDO::FETCH_CLASS, 'Product');
    return $products;
}
