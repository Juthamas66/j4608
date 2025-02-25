<?php
session_start();

if(empty($_SESSION['S_id']) & !isset($_SESSION['s_id'])){
    echo "Access Denied";
    echo "<meta http-equiv='refresh' content='3; index.php'>";
    exit;
}
?>