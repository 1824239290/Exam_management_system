<%--
  Created by IntelliJ IDEA.
  User: LYS
  Date: 2023/6/11
  Time: 16:13
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

<body onload="detail()">
<div class="container-scroller">
    <!-- partial:../../partials/_navbar.jsp -->
    <%@include file="../../partials/nav-top.jsp"%>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_settings-panel.jsp -->
        <div class="theme-setting-wrapper">
            <div id="settings-trigger"><i class="ti-settings"></i></div>
            <div id="theme-settings" class="settings-panel">
                <i class="settings-close ti-close"></i>
                <p class="settings-heading">SIDEBAR SKINS</p>
                <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border me-3"></div>Light</div>
                <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border me-3"></div>Dark</div>
                <p class="settings-heading mt-2">HEADER SKINS</p>
                <div class="color-tiles mx-0 px-4">
                    <div class="tiles success"></div>
                    <div class="tiles warning"></div>
                    <div class="tiles danger"></div>
                    <div class="tiles info"></div>
                    <div class="tiles dark"></div>
                    <div class="tiles default"></div>
                </div>
            </div>
        </div>
        <div id="right-sidebar" class="settings-panel">
            <i class="settings-close ti-close"></i>
            <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="todo-tab" data-bs-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="chats-tab" data-bs-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
                </li>
            </ul>
            <div class="tab-content" id="setting-content">
                <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                    <div class="add-items d-flex px-3 mb-0">
                        <form class="form w-100">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                                <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                            </div>
                        </form>
                    </div>
                    <div class="list-wrapper px-3">
                        <ul class="d-flex flex-column-reverse todo-list">
                            <li>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="checkbox" type="checkbox">
                                        Team review meeting at 3.00 PM
                                    </label>
                                </div>
                                <i class="remove ti-close"></i>
                            </li>
                            <li>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="checkbox" type="checkbox">
                                        Prepare for presentation
                                    </label>
                                </div>
                                <i class="remove ti-close"></i>
                            </li>
                            <li>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="checkbox" type="checkbox">
                                        Resolve all the low priority tickets due today
                                    </label>
                                </div>
                                <i class="remove ti-close"></i>
                            </li>
                            <li class="completed">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="checkbox" type="checkbox" checked>
                                        Schedule meeting for next week
                                    </label>
                                </div>
                                <i class="remove ti-close"></i>
                            </li>
                            <li class="completed">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="checkbox" type="checkbox" checked>
                                        Project review
                                    </label>
                                </div>
                                <i class="remove ti-close"></i>
                            </li>
                        </ul>
                    </div>
                    <h4 class="px-3 text-muted mt-5 fw-light mb-0">Events</h4>
                    <div class="events pt-4 px-3">
                        <div class="wrapper d-flex mb-2">
                            <i class="ti-control-record text-primary me-2"></i>
                            <span>Feb 11 2018</span>
                        </div>
                        <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
                        <p class="text-gray mb-0">The total number of sessions</p>
                    </div>
                    <div class="events pt-4 px-3">
                        <div class="wrapper d-flex mb-2">
                            <i class="ti-control-record text-primary me-2"></i>
                            <span>Feb 7 2018</span>
                        </div>
                        <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                        <p class="text-gray mb-0 ">Call Sarah Graves</p>
                    </div>
                </div>
                <!-- To do section tab ends -->
                <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
                    <div class="d-flex align-items-center justify-content-between border-bottom">
                        <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                        <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 fw-normal">See All</small>
                    </div>
                    <ul class="chat-list">
                        <li class="list active">
                            <div class="profile"><img src="../../images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                            <div class="info">
                                <p>Thomas Douglas</p>
                                <p>Available</p>
                            </div>
                            <small class="text-muted my-auto">19 min</small>
                        </li>
                        <li class="list">
                            <div class="profile"><img src="../../images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                            <div class="info">
                                <div class="wrapper d-flex">
                                    <p>Catherine</p>
                                </div>
                                <p>Away</p>
                            </div>
                            <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                            <small class="text-muted my-auto">23 min</small>
                        </li>
                        <li class="list">
                            <div class="profile"><img src="../../images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                            <div class="info">
                                <p>Daniel Russell</p>
                                <p>Available</p>
                            </div>
                            <small class="text-muted my-auto">14 min</small>
                        </li>
                        <li class="list">
                            <div class="profile"><img src="../../images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                            <div class="info">
                                <p>James Richardson</p>
                                <p>Away</p>
                            </div>
                            <small class="text-muted my-auto">2 min</small>
                        </li>
                        <li class="list">
                            <div class="profile"><img src="../../images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                            <div class="info">
                                <p>Madeline Kennedy</p>
                                <p>Available</p>
                            </div>
                            <small class="text-muted my-auto">5 min</small>
                        </li>
                        <li class="list">
                            <div class="profile"><img src="../../images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                            <div class="info">
                                <p>Sarah Graves</p>
                                <p>Available</p>
                            </div>
                            <small class="text-muted my-auto">47 min</small>
                        </li>
                    </ul>
                </div>
                <!-- chat tab ends -->
            </div>
        </div>
        <!-- partial -->
        <!-- partial:../../partials/_sidebar.jsp -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="../../index.jsp">
                        <i class="mdi mdi-grid-large menu-icon"></i>
                        <span class="menu-title">首页</span>
                    </a>
                </li>
                <li class="nav-item nav-category">题库管理</li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon mdi mdi-floor-plan"></i>
                        <span class="menu-title">题库管理</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link " href="../tiku/tklist.jsp">题库列表</a></li>
                            <li class="nav-item"> <a class="nav-link " href="../tiku/tkadd.jsp">添加题库</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" data-bs-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                        <i class="menu-icon mdi mdi-chart-line"></i>
                        <span class="menu-title">题目管理</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="charts">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="../timu/schoselist.jsp">单选题列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../timu/judgmentlist.jsp">判断题列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../timu/multiplelist.jsp">多选题列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../timu/tmadd.jsp">添加题目</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item nav-category">考试管理</li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                        <i class="menu-icon mdi mdi-card-text-outline"></i>
                        <span class="menu-title">考试通知</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="form-elements">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"><a class="nav-link" href="../tongzhi/tzlist.jsp">通知管理</a></li>
                            <li class="nav-item"><a class="nav-link" href="../tongzhi/tzadd.jsp">发布通知</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                        <i class="menu-icon mdi mdi-table"></i>
                        <span class="menu-title">考试管理</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="tables">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="../kaoshi/kslist.jsp">试卷管理</a></li>
                            <li class="nav-item"> <a class="nav-link" href="../kaoshi/ksadd.jsp">添加试卷</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">题目修改</h4>
                                <p class="card-description">
                                    请输入题目相关信息
                                </p>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">题目描述</label>
                                    <input type="text" class="form-control name" id="exampleInputUsername1" placeholder="题目描述" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername2">所属题库</label>
                                    <input type="text" class="form-control qname" id="exampleInputUsername2" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername22">题目类型</label>
                                    <input type="text" class="form-control type" id="exampleInputUsername22" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername3">选项A</label>
                                    <input type="text" class="form-control optionA" id="exampleInputUsername3" placeholder="选项A" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername4">选项B</label>
                                    <input type="text" class="form-control optionB" id="exampleInputUsername4" placeholder="选项B" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername5">选项C</label>
                                    <input type="text" class="form-control optionC" id="exampleInputUsername5" placeholder="选项C" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername6">选项D</label>
                                    <input type="text" class="form-control optionD" id="exampleInputUsername6" placeholder="选项D" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername8">正确选项</label>
                                    <input type="text" class="form-control answer" id="exampleInputUsername8" placeholder="请输入选项名" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername7">解析</label>
                                    <input type="text" class="form-control analysis" id="exampleInputUsername7" placeholder="解析内容" >
                                </div>
                                <button class="btn btn-primary me-2" onclick="update()">修改</button>
                                <button class="btn btn-light" onclick="cancelAdd()">返回</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 grid-margin stretch-card">
                    </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:../../partials/_footer.jsp -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash.</span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021. All rights reserved.</span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
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
<script src="../../js/axios-min.js"></script>
<script src="../../js/jquery--min.js"></script>
<script>

    function  GetQueryString(name)
    {
        var  reg = new  RegExp( "(^|&)" + name + "=([^&]*)(&|$)" );
        var  r = window.location.search.substr(1).match(reg);
        if (r!= null ) return   unescape(r[2]); return  null ;
    }
    var type=GetQueryString("type");
    var id=GetQueryString("id");
    function detail() {
        if (type==="schose"){
            axios({
                method:"get",
                url:"/schose/"+id
            }).then(function (res){
                if (res.data.code==200){
                    data1=res.data.data;
                    document.getElementById("exampleInputUsername1").value=data1.tname;
                    document.getElementById("exampleInputUsername2").value=data1.qid;
                    document.getElementById("exampleInputUsername22").value="单选题";
                    document.getElementById("exampleInputUsername3").value=data1.optionA;
                    document.getElementById("exampleInputUsername4").value=data1.optionB;
                    document.getElementById("exampleInputUsername5").value=data1.optionC;
                    document.getElementById("exampleInputUsername6").value=data1.optionD;
                    document.getElementById("exampleInputUsername7").value=data1.analysis;
                    document.getElementById("exampleInputUsername8").value=data1.answer;
                }else{
                    alert(res.data.msg);
                }
            })
        }else if (type==="judgment"){
            axios({
                method:"get",
                url:"/judgment/"+id
            }).then(function (res){
                if (res.data.code==200){
                    data1=res.data.data;
                    document.getElementById("exampleInputUsername1").value=data1.jname;
                    document.getElementById("exampleInputUsername2").value=data1.qid;
                    document.getElementById("exampleInputUsername22").value="判断题题";
                    document.getElementById("exampleInputUsername3").value=data1.optionA;
                    document.getElementById("exampleInputUsername4").value=data1.optionB;
                    document.getElementById("exampleInputUsername5").value="判断题无此选项！";
                    document.getElementById("exampleInputUsername6").value="判断题无此选项！";
                    document.getElementById("exampleInputUsername5").disabled="disabled";
                    document.getElementById("exampleInputUsername6").disabled="disabled";
                    document.getElementById("exampleInputUsername7").value=data1.analysis;
                    document.getElementById("exampleInputUsername8").value=data1.answer;
                }else{
                    alert(res.data.msg);
                }
            })
        }else if (type==="multiple"){
            axios({
                method:"get",
                url:"/multiple/"+id
            }).then(function (res){
                if (res.data.code==200){
                    data1=res.data.data;
                    document.getElementById("exampleInputUsername1").value=data1.mname;
                    document.getElementById("exampleInputUsername2").value=data1.qid;
                    document.getElementById("exampleInputUsername22").value="多选题";
                    document.getElementById("exampleInputUsername3").value=data1.optionA;
                    document.getElementById("exampleInputUsername4").value=data1.optionB;
                    document.getElementById("exampleInputUsername5").value=data1.optionC;
                    document.getElementById("exampleInputUsername6").value=data1.optionD;
                    document.getElementById("exampleInputUsername7").value=data1.analysis;
                    document.getElementById("exampleInputUsername8").value=data1.answer;
                }else{
                    alert(res.data.msg);
                }
            })
        }

    }

    function cancelAdd(){
        history.back();
    }

    function update() {
        if (type==="schose"){
            axios({
                method:"put",
                url:"/schose",
                data:{
                    tname:$(".name").val(),
                    optionA:$(".optionA").val(),
                    optionB:$(".optionB").val(),
                    optionC:$(".optionC").val(),
                    optionD:$(".optionD").val(),
                    qid:$(".qname").val(),
                    answer:$(".answer").val(),
                    analysis:$(".analysis").val(),
                    tid:id
                }
            }).then(function (res) {
                if (res.data.code==200){
                    alert(res.data.msg);
                    window.location.href="/pages/timu/schoselist.jsp"
                }
            })
        }else if (type==="judgment"){
            axios({
                method:"put",
                url:"/judgment",
                data:{
                    jname:$(".name").val(),
                    optionA:$(".optionA").val(),
                    optionB:$(".optionB").val(),
                    qid:$(".qname").val(),
                    answer:$(".answer").val(),
                    analysis:$(".analysis").val(),
                    jid:id
                }
            }).then(function (res) {
                if (res.data.code==200){
                    alert(res.data.msg);
                    window.location.href="/pages/timu/judgmentlist.jsp"
                }
            })
        }else if (type==="multiple"){
            axios({
                method:"put",
                url:"/multiple",
                data:{
                    mname:$(".name").val(),
                    optionA:$(".optionA").val(),
                    optionB:$(".optionB").val(),
                    optionC:$(".optionC").val(),
                    optionD:$(".optionD").val(),
                    qid:$(".qname").val(),
                    answer:$(".answer").val(),
                    analysis:$(".analysis").val(),
                    mid:id
                }
            }).then(function (res) {
                if (res.data.code==200){
                    alert(res.data.msg);
                    window.location.href="/pages/timu/multiplelist.jsp"
                }
            })
        }
    }
</script>
</body>

</html>



