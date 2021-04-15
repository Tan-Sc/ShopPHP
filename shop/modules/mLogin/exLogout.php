<?php
if (!isset($_SESSION)) session_start();

if(isset($_SESSION['taiKhoan']) && $_SESSION['taiKhoan'] != NULL){ 
    unset($_SESSION['taiKhoan']);
    DataProvider::ChangeURL("index.php?c=1"); 
    
    
}

?>