<?php
session_start();
session_unset($_SESSION['id']);
header('location: index.php');
?>