<%--
  Created by IntelliJ IDEA.
  User: 橘木苏_Oc
  Date: 2023/6/7
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Star Admin2 </title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/feather/feather.css">
  <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/typicons/typicons.css">
  <link rel="stylesheet" href="../../vendors/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
</head>

<body>

<div class="container-scroller">
  <div class="container-fluid page-body-wrapper full-page-wrapper">
    <div class="content-wrapper d-flex align-items-center auth px-0">
      <div class="row w-100 mx-0">
        <div class="col-lg-4 mx-auto">
          <div class="auth-form-light text-left py-5 px-4 px-sm-5">
            <div class="brand-logo">
              <img src="../../images/logo.svg" alt="logo">
            </div>
            <h4>您好！请在此登录</h4>
            <h6 class="fw-light">登录到管理系统</h6>
            <form class="pt-3">
              <div class="form-group">
                <input type="email" class="form-control form-control-lg" id="user" placeholder="Username">
              </div>
              <div class="form-group">
                <input type="password" class="form-control form-control-lg" id="password" placeholder="Password">
              </div>
              <div style="display: none" class="alert alert-danger" id="alert-danger" role="alert">
                账号或密码错误！
              </div>
              <div class="mt-3">
                <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" onclick="login()">登 录</a>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- content-wrapper ends -->
  </div>
  <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="../../vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="../../vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="../../js/off-canvas.js"></script>
<script src="../../js/hoverable-collapse.js"></script>
<script src="../../js/template.js"></script>
<script src="../../js/settings.js"></script>
<script src="../../js/todolist.js"></script>
<!-- endinject -->
<!-- axios -->
<script src="../../js/axios-min.js"></script>
<script src="../../js/jquery--min.js"></script>

<script>
  var user = $("#user").val();
  var password = $("#password").val();
  console.log(user + password);
  function login() {
    var user = $("#user").val();
    var password = $("#password").val();
    console.log(user + password);
    axios({
      method: 'post',
      url: '/login',
      data: {
        user: user,
        password: password
      }
    }).then(function (res){
      if (res.data.code == 200){
        if (user==="admin"){
          window.location.href = "./index";
        }else{
          window.location.href="../../pages/student/index.jsp";
        }
      }else {
        $("#alert-danger").css('display','block');//显示
        setTimeout(function () { $("#alert-danger").css('display','none') }, 2000);
      }
    });
  }
</script>
</body>

</html>
