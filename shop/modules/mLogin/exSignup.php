<?php
if (!isset($_SESSION)) session_start();

if (isset($_POST['signup_submit']) && ($_POST['username']) != '' && ($_POST['password']) != '' && ($_POST['repassword']) != '') {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $repassword = $_POST['repassword'];
    if ($password != $repassword) {
        $_SESSION["thongbao"] = "Mật khẩu nhập lại không đúng";
        DataProvider::ChangeURL("index.php?c=10");
        die();
    }
    $sql = "SELECT * FROM KHACHHANG WHERE username =  '$username'";
    //$old = mysqli_query($connection, $sql);
    $result = DataProvider::ExecuteQuery($sql);
    if (mysqli_num_rows($result) > 0) {
        $_SESSION["thongbao"] = "Tên đăng nhập đã tồn tại";
        DataProvider::ChangeURL("index.php?c=10");
        die();
    }
    $sql = "INSERT INTO KHACHHANG WHERE username = '$tenDangNhap' AND pwd='$matKhau'";
    //mysqli_query($connection, $sql);
    DataProvider::ExecuteQuery($sql);
    DataProvider::ChangeURL("index.php?c=9");
    //$_SESSION["thongbao"] = "đã đăng ký thành công";
} else {
    $_SESSION["thongbao"] = "Chưa nhập đầy đủ thông tin";
    DataProvider::ChangeURL("index.php?c=10");
    die();
}


?>
