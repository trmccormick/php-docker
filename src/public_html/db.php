# in /var/www/html/db.php
<?php

$host = getenv("DATABASE_HOST");
$port = getenv("DATABASE_PORT");
$usr = getenv("DATABASE_USER");
$pwd = getenv("DATABASE_PASSWORD");

$dsn = 'mysql:host='.$host.';port='.$port;

try {
    $dbh = new PDO($dsn, $usr, $pwd);
} catch (PDOException $e) {
    die('Connection failed: ' . $e->getMessage());
}

echo 'Connection made!!!';
