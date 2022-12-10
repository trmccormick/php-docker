# in /var/www/html/db.php
<?php

$host = getenv("DB_HOST");
$port = getenv("DB_PORT");
$usr = getenv("DB_USER");
$pwd = getenv("DB_PASSWORD");

$dsn = 'mysql:host='.$host.';port='.$port;

try {
    $dbh = new PDO($dsn, $usr, $pwd);
} catch (PDOException $e) {
    die('Connection failed: ' . $e->getMessage());
}

echo 'Connection made!!!';
