<?php
/*
 * This file is the first file that will be run.
 * The code in this file will check on which page you are and includes all the files that are needed.
 */

//make sure you add all the modules.
require '../Modules/categories.php';
require '../Modules/login.php';
require '../Modules/logout.php';
//includes the code to connect to the database
require '../Modules/database.php';
require '../Modules/common.php';

session_start();
//var_dump($_SESSION);
//var_dump($_POST);

/*
 * this will get the part of the URL from the first "/".
 * so if the URL is "healthone.localhost/category/1" than $request will be "/category/1".
 */
$request = $_SERVER['REQUEST_URI'];

/*
 * this separates the URL where there is a "/" and puts it in an array.
 * For example: if the $request is "/category/1" than $params wil be:
 *  [0] => ""
 *  [1] => "category"
 *  [2] => "1"
 */
$params = explode("/", $request);
print_r($request);
//this wil be the title of your page
$title = "HealthOne";

//this variable will add text to your title. you can use this on the different pages.
$titleSuffix = "";

//if you want to send a message to the user you can use this variable.
$message = "";

/*$params[1] is the action (the page you are visiting).
 *$params[2] is parameter you give to the page.
 *the switch statement checks which page you want to go.
 */
switch ($params[1]) {

    case 'categories':
        //adds " | Categories:" to the title
        $titleSuffix = ' | Categories';
        /*
         * calls the function getCategories from categories.php in the modules folder.
         * check categories.php for more information.
         */
        $categories = getCategories();
        //var_dump($categories);die;

        /*
         * includes the template categories.php from the templates folder.
         * check categories.php for more information.
         */
        include_once "../Templates/categories.php";
        break;

    case 'category':
        include_once "../Templates/home.php";
        break;

    case 'product':
        break;

    case 'login':
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;

    case 'logout':
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;

    case 'register':
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;

    case 'contact':
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
        break;

    case 'admin':
        include_once('admin.php');
        break;

    case 'member':
        include_once('member.php');
        break;

    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
}







