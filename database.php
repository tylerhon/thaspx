<?php


    class Database {
        private static $dsn = 'mysql:host=localhost;dbname=myportfolio';
        private static $username = 'root';
        private static $password = 'Pa$$w0rd';
        private static $db;

        private function __construct() {}

        public static function getDB () {
            if (!isset(self::$db)) {
                try {
                    self::$db = new PDO(self::$dsn,
                                         self::$username,
                                         self::$password);
                } catch (PDOException $e) {
                    $error_message = $e->getMessage();
                    echo $error_message;
                    //include('../errors/database_error.php');
                    include 'error.php';
                    exit();
                }
            }
            return self::$db;
        }
    }
?>


