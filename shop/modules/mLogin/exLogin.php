<?php
    if(isset($_POST["btnLogin"])){
        $tenDangNhap = $_POST["txtTenDangNhap"];
        $matKhau = $_POST["txtMatKhau"];
        $sql = "SELECT * FROM KHACHHANG WHERE BiXoa = 0 AND username = '$tenDangNhap' AND pwd='$matKhau'";
        $result = DataProvider::ExecuteQuery($sql);
        $row = mysqli_fetch_array($result);
      
        // $ten = "SELECT HoTen FROM KHACHHANG WHERE  username = '$tenDangNhap'";
        // $_SESSION['userName'] = $ten;
        if($row == null){            
            DataProvider::ChangeURL("index.php?c=9");
        } else {
            $_SESSION['taiKhoan'] = $tenDangNhap;    
            DataProvider::ChangeURL("index.php?c=1");            
        }

    } else {
        DataProvider::ChangeURL("index.php?c=9");
    }
