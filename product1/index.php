<?php
// содержит переменные пагинации 
require_once 'config/core.php';
// файлы для работы с БД и файлы с объектами 
require_once 'config/database.php';
require_once 'objects/product.php';
require_once 'objects/category.php';

// получение соединения с БД 
$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$category = new Category($db);

$page_title = "Список товаров";

require_once "layout_header.php";

// получение товаров 
$stmt = $product->readAll($from_record_num, $records_per_page);

// укажем страницу, на которой используется пагинация 
$page_url = "index.php?";

// подсчёт общего количества строк (используется для разбивки на страницы) 
$total_rows = $product->countAll();

// контролирует, как будет отображаться список продуктов 
require_once "read_template.php";

// содержит наш JavaScript и закрывающие теги html 
require_once "layout_footer.php";
?>