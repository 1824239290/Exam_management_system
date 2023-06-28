<%@ page import="com.jumusu.domain.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean flag=session.getAttribute("account")==null;
    String account="";
    String jump="";
    int uid = 0;
    if (flag){
        jump="<script>alert(\"请先登录！\");window.location.href=\"../../../login\";</script>";
    }else {
//        account=session.getAttribute("account").toString();
        Account account1 = (Account) request.getSession().getAttribute("account");
        account=account1.getUser();
        uid = account1.getUid();
    }
%>
<%=jump%>
<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
        <div class="me-3">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
                <span class="icon-menu"></span>
            </button>
        </div>
        <div>
            <a class="navbar-brand brand-logo" href="../index.jsp">
                <img src="../../images/logo.svg" alt="logo" />
            </a>
            <a class="navbar-brand brand-logo-mini" href="../index.jsp">
                <img src="../../images/logo-mini.svg" alt="logo" />
            </a>
        </div>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-top">
        <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
                <h1 class="welcome-text">您好, <span class="text-black fw-bold"><%=account%></span></h1>
                <input type="hidden" value="<%=uid%>" id="uid">
            </li>
        </ul>
        <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown d-none d-lg-block user-dropdown">
                <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                    <img class="img-xs rounded-circle" src="../../images/faces/face8.jpg" alt="Profile image"> </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                    <a class="dropdown-item"  onclick="Logout()"><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Sign Out</a>
                </div>
            </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>
</nav>
<script>
    function Logout(){
        axios({
            method:'get',
            url:"/logout",
        }).then(function (res) {
            console.log(res);
            if (res.data.code == 200){
                window.location.href="/login"
            }
        })
    }
</script>