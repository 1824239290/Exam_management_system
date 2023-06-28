<%--
  Created by IntelliJ IDEA.
  User: LYS
  Date: 2023/6/22
  Time: 16:02
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
    <style>
        .p-content{
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            margin-bottom: 10px;
        }
        .p-div-input{
            text-indent: 1em;
            flex: 1;
            /*margin: 5px;*/
            width: calc((100% - 10px) / 4);
            min-width: calc((100% - 10px) / 4);
            max-width: calc((100% - 10px) / 4);
        }
        .p-div-input:nth-child(4n) {
            /* 去除第4n个的margin-right */
            margin-right: 0;
        }
        .p-div-input input{
            vertical-align: middle;
        }
        .p-div-input label{
            text-indent: 0em;
        }
        .exam-title{
            font-weight: bold;
        }
    </style>
</head>

<body onload="">
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
                    <a class="nav-link" href="./index.jsp">
                        <i class="mdi mdi-grid-large menu-icon"></i>
                        <span class="menu-title">首页</span>
                    </a>
                </li>
                <li class="nav-item nav-category">在线考试</li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon mdi mdi-floor-plan"></i>
                        <span class="menu-title">考试</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="tzlist.jsp">通知列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="kslist.jsp">考试列表</a></li>
                            <li class="nav-item"> <a class="nav-link" href="analysislist.jsp">考试成绩</a></li>
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
                                <h4 class="card-title" style="text-align: center"></h4>
                                <div class="table-responsive">

                                    <h5 class="card-title">单选题</h5>
                                    <div class="form-group" id="schose">
<%--                                        <p>1.题目内容</p>--%>
<%--                                        <div class="p-content">--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="A" name="1" id="1optionA" required/><label for="1optionA">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="B" name="1" id="1optionB" required/><label for="1optionB">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="C" name="1" id="1optionC" required/><label for="1optionC">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="D" name="1" id="1optionD" required/><label for="1optionD">选项A</label></div>--%>
<%--                                        </div>--%>
                                    </div>
                                    <h5 class="card-title">多选题</h5>
                                    <div class="form-group" id="multiple">
<%--                                        <p class="exam-title">1.题目内容</p>--%>
<%--                                        <div class="p-content">--%>
<%--                                            <div class="p-div-input"><input  type="checkbox" value="A" name="1" id="3optionA" /><label for="3optionA">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="checkbox" value="B" name="1" id="3optionB" /><label for="3optionB">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="checkbox" value="C" name="1" id="3optionC" /><label for="3optionC">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="checkbox" value="D" name="1" id="3optionD" /><label for="3optionD">选项A</label></div>--%>
<%--                                        </div>--%>
                                    </div>
                                    <h5 class="card-title">判断题</h5>
                                    <div class="form-group" id="judgment">
<%--                                        <p>1.题目内容</p>--%>
<%--                                        <div class="p-content">--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="A" name="1" id="2optionA" required/><label for="2optionA">选项A</label></div>--%>
<%--                                            <div class="p-div-input"><input  type="radio" value="B" name="1" id="2optionB" required/><label for="2optionB">选项A</label></div>--%>
<%--                                        </div>--%>
                                    </div>
                                    <button class="btn btn-primary" onclick="issubmit()">提交试卷</button>
                                </div>
                            </div>
                        </div>
                    </div>
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
<script src="../../js/axios-min.js"></script>
<script src="../../js/jquery--min.js"></script>
<!-- endinject -->
<script>
    function  GetQueryString(name)
    {
        var  reg = new  RegExp( "(^|&)" + name + "=([^&]*)(&|$)" );
        var  r = window.location.search.substr(1).match(reg);
        if (r!= null ) return   unescape(r[2]); return  null ;
    }
    var pid=GetQueryString("tpid");
    var uid=$("#uid").val();
    function gettestpapername() {
        axios({
            url:"/testPaper/pid="+pid,
            method:"get"
        }).then(function (res) {
            document.querySelector(".card-title").innerHTML=res.data.data.pname;

            });
    }
    //获取试卷单选题
    function gettestpaperschose() {
        axios({
            url:"/schose/pid="+pid,
            method:"get"
        }).then(function (res) {
            var html = "";

            //循环绑定数据
            var data1 = res.data.data;
            console.log(data1);
            $.each(data1,function (k,v){
                html +=`<p class="exam-title exam-schose">${k+1}、${data1[k].tname}</p>
                            <div class="p-content">
                            <input type="hidden" value="${data1[k].tid}" name="stid${k+1}"/>
                                <div class="p-div-input"><input  type="radio" value="A" name="schose${k+1}" id="${k+1}${data1[k].type}optionA" /><label for="${k+1}${data1[k].type}optionA">${data1[k].optionA}</label></div>
                                <div class="p-div-input"><input  type="radio" value="B" name="schose${k+1}" id="${k+1}${data1[k].type}optionB" /><label for="${k+1}${data1[k].type}optionB">${data1[k].optionB}</label></div>
                                <div class="p-div-input"><input  type="radio" value="C" name="schose${k+1}" id="${k+1}${data1[k].type}optionC" /><label for="${k+1}${data1[k].type}optionC">${data1[k].optionC}</label></div>
                                <div class="p-div-input"><input  type="radio" value="D" name="schose${k+1}" id="${k+1}${data1[k].type}optionD" /><label for="${k+1}${data1[k].type}optionD">${data1[k].optionD}</label></div>
                            </div>`
            });[]
            $("#schose").append(html)
        });
    }
    // 获取试卷多选题
    function gettestpapermultiple() {
        axios({
            url:"/multiple/pid="+pid,
            method:"get"
        }).then(function (res) {
            var html = "";

            //循环绑定数据
            var data1 = res.data.data;
            console.log(data1);
            $.each(data1,function (k,v){
                html +=`<p class="exam-title exam-multiple">${k+1}、${data1[k].mname}</p>
                            <div class="p-content">
                            <input type="hidden" value="${data1[k].mid}" name="mtid${k+1}"/>
                                <div class="p-div-input"><input  type="checkbox" value="A" name="multiple${k+1}" id="${k+1}${data1[k].type}optionA" /><label for="${k+1}${data1[k].type}optionA">${data1[k].optionA}</label></div>
                                <div class="p-div-input"><input  type="checkbox" value="B" name="multiple${k+1}" id="${k+1}${data1[k].type}optionB" /><label for="${k+1}${data1[k].type}optionB">${data1[k].optionB}</label></div>
                                <div class="p-div-input"><input  type="checkbox" value="C" name="multiple${k+1}" id="${k+1}${data1[k].type}optionC" /><label for="${k+1}${data1[k].type}optionC">${data1[k].optionC}</label></div>
                                <div class="p-div-input"><input  type="checkbox" value="D" name="multiple${k+1}" id="${k+1}${data1[k].type}optionD" /><label for="${k+1}${data1[k].type}optionD">${data1[k].optionD}</label></div>
                            </div>`
            });[]
            $("#multiple").append(html)
        });
    }
    function gettestpaperjudgment() {
        axios({
            url:"/judgment/pid="+pid,
            method:"get"
        }).then(function (res) {
            var html = "";

            //循环绑定数据
            var data1 = res.data.data;
            console.log(data1);
            $.each(data1,function (k,v){
                html +=`<p class="exam-title exam-judgment">${k+1}、${data1[k].jname}</p>
                            <div class="p-content">
                            <input type="hidden" value="${data1[k].jid}" name="jtid${k+1}"/>
                                <div class="p-div-input"><input  type="radio" value="A" name="judgment${k+1}" id="${k+1}${data1[k].type}optionA" /><label for="${k+1}${data1[k].type}optionA">${data1[k].optionA}</label></div>
                                <div class="p-div-input"><input  type="radio" value="B" name="judgment${k+1}" id="${k+1}${data1[k].type}optionB" /><label for="${k+1}${data1[k].type}optionB">${data1[k].optionB}</label></div>
                            </div>`
            });[]
            $("#judgment").append(html)
        });
    }
    gettestpapername();
    gettestpaperschose();
    gettestpapermultiple();
    gettestpaperjudgment();
    // 交卷提交答题数据
    function issubmit() {
        if(window.confirm('你确定要交卷吗？请仔细查看作答情况后提交试卷。')){
            submitExam()
        }else{
            return false;
        }
    }
    function submitExam() {
        // 单选题数据
        var schoselength=$(".exam-schose").size();
        var schose=[];
        for (var i=0;i<schoselength;i++){
            var schosename="schose"+(i+1);
            var selected=$('input[name='+schosename+']:checked').val();
            var tid="stid"+(i+1);
            var tids=$('input[name='+tid+']').val();
            schose.push({
                uid:uid,
                tid:tids,
                pid:pid,
                selected:selected,
                type:"schose"
            });
        }


        //多选题数据
        var multiplelength=$(".exam-multiple").size();
        var multiple=[];
        for (var i=0;i<multiplelength;i++){
            var multiplename="multiple"+(i+1);
            // var selected=$('input[name='+multiplename+']:checked').val();

            var selected = [];
            $('input[name='+multiplename+']:checkbox:checked').each(function () {
                selected.push($(this).val());
            });
            selected=selected.join("");

            var tid="mtid"+(i+1);
            var tids=$('input[name='+tid+']').val();
            multiple.push({
                uid:uid,
                tid:tids,
                pid:pid,
                selected:selected,
                type:"multiple"
            });
        }


        //判断题数据
        var judgmentlength=$(".exam-judgment").size();
        var judgment=[];
        for (var i=0;i<judgmentlength;i++){
            var judgmentname="judgment"+(i+1);
            var selected=$('input[name='+judgmentname+']:checked').val();
            var tid="jtid"+(i+1);
            var tids=$('input[name='+tid+']').val();
            judgment.push({
                uid:uid,
                tid:tids,
                pid:pid,
                selected:selected,
                type:"judgment"
            });
        }


        var data=[];
        data.push(...schose,...multiple,...judgment);
        console.log("data>>"+JSON.stringify(data))
        //发送请求
        axios({
            url:"/reply",
            method:"post",
            data:data
        }).then(function (res) {
            if (res.data.code==200){
                alert(res.data.msg);
                window.location.href="analysislist.jsp";
            }
        })

    }
</script>
</body>

</html>