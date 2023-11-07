<?php
  if(isset($_POST['btnThemTongSoCSVC']))
  {   $TongSoCSVC=$_POST['TongSoCSVC'];
    
    $sql2="select * from TongSoCSVC where TongSoCSVC='TongSoCSVC' ";  
    $query2=mysqli_query($conn,$sql2);
    if(mysqli_num_rows($query2)>0)
    {
      echo"<script>alert('Tên này đã có !');</script>";
    }
    else
      {
        $sql3="insert into phong(TongSoCSVC) values('$TongSoCSVC')";
        if(mysqli_query($conn,$sql3))
          echo"<script>alert('Thêm CSVC thành công !');window.location='index.php?page=QL-Phong';</script>";
      }
  }

?>