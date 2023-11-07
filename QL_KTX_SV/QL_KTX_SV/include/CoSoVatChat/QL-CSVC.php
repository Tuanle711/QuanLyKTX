<div id="content-header">
        <div id="breadcrumb"> <a href="?page=dashboard" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="?page=QL-Lop" class="current">Quản Lí Cơ Sở Vật Chất</a> </div>
    <h1>Quản Lí Cơ Sở Vật Chất</h1>
   
</div>
    <!--End-breadcrumbs-->
    
    <!--Action boxes-->
      <div class="container-fluid">
    <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Quản Lí Cơ Sở Vật Chất</h5>
            
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Mã Phòng</th>
                  <th>Tên Phòng</th>
                  <th>Tổng Số CSVC </th>
                  <th>Sửa </th>
                  <th>Xóa</th>
                  
                  
                </tr>
              </thead>
              <tbody>
                <?php
                  $sql="select * from TongSoCSVC  ";
          $query=mysqli_query($conn,$sql);
          while($row=mysqli_fetch_assoc($query)){ 
            ?>
              <tr class='gradeU'>
                <th><?php echo $row['MaPhong'] ?></th>
                <th><?php echo $row['TongSoCSVC']?></th>
                 <th><?php echo $row['MoTa'] ?></th>
                                 <th> <a href="?page=Sua-csvc&&MaPhong=<?php echo $row['MaPhong'] ?>">sửa</a></th>
                                <th> <a href="?page=Xoa-csvc&&MaPhong=<?php echo $row['MaPhong'] ?>" onclick='return deleteAction();'>Xóa</a></th>
                              </tr>  
            <?php
          }
        ?>
               </tbody>
            </table>
          </div>
        </div> 
  
        </div>
        
        <div class="container-fluid">
      <div class="row-fluid">
    <div class="span12">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Thêm csvc</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="#" method="post" class="form-horizontal">
            
            <div class="control-group">
              
            <div class="control-group">
              <label class="control-label">Tên cơ sở vật chất</label>
              <div class="controls">
                <input type="text" name="TongSoCSVC" class="span8"required  />
              </div>
            </div>
            
           
            <div class="form-actions">
              <button type="submit" name="btnThemTongSoCSVC" class="btn btn-success">Thêm</button>
            </div>
          </form>
        </div>
      </div>


