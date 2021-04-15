    <?php
    if (!isset($_SESSION)) session_start();

    if (isset($_SESSION['taiKhoan']) && $_SESSION['taiKhoan'] != NULL) {
    ?>
        <p>
            Xin chào:
            <?php echo $_SESSION['taiKhoan']; ?>
            | <a href="./mLogin/exLogout.php">Thoát</a>
        <p>
        <?php
    }
        ?>
