<br><br>
<form class="form-horizontal" name="frmDangNhap" action="index.php?c=106" method="post">
    <h2 class="text-center">Đăng nhập</h2>
    <div class="form-group">
         <label class="col-md-4 control-label" for="txtTenDangNhap">Tên Đăng Nhập</label>  
        <div class="col-md-5">
         <input id="txtTenDangNhap" name="txtTenDangNhap" type="text" placeholder="" class="form-control input-sm" required="">      
       </div>
    </div>
    <!-- Password input-->
    <div class="form-group">
         <label class="col-md-4 control-label" for="txtMatKhau">Mật Khẩu</label>
     <div class="col-md-5">
        <input id="txtMatKhau" name="txtMatKhau" type="password" placeholder="" class="form-control input-sm" required="">     
        </div>
    </div>

    <div class="form-group text-center">
        <?php
            if(isset($_GET["err"])){
                echo "<strong><i>Tên đăng nhập hoặc mật khẩu bị sai</i></strong>";
            }
        ?>
    </div>
    <!-- Button -->
    <div class="form-group">
         <label class="col-md-4 control-label" for=""></label>
      <div class="col-md-4">
          <button type="submit" class="btn btn-primary" name="btnLogin">Đăng nhập</button>   
      </div>
    <div class="col-md -1">
           <a href="index.php?c=10">
               <button type="button" class="btn btn-primary" >Đăng Ký</button> 
              </a>
           </div>   
    </div>
    
  
</form>