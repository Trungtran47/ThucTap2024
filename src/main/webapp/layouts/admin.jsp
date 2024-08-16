<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Dashboard | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">

    <!-- App favicon -->
    <link rel="shortcut icon" href="<c:url value='/template/assets/images/favicon.ico'/>">

    <!-- Third party CSS -->
    <link href="<c:url value='/template/assets/css/vendor/jquery-jvectormap-1.2.2.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/assets/css/vendor/dataTables.bootstrap5.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/assets/css/vendor/responsive.bootstrap5.css'/>" rel="stylesheet" type="text/css">
    <!-- App CSS -->
    <link href="<c:url value='/template/assets/css/icons.min.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/template/assets/css/app.min.css'/>" rel="stylesheet" type="text/css" id="light-style">
    <link href="<c:url value='/template/assets/css/app-dark.min.css'/>" rel="stylesheet" type="text/css" id="dark-style">
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>--%>
<%--    <link href="https://cdn.datatables.net/2.1.3/css/dataTables.bootstrap5.css"/>--%>
    <!-- DataTables CSS -->
<%--    <link href="https://cdn.datatables.net/1.13.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">--%>
    <link href="https://cdn.datatables.net/2.1.3/css/dataTables.bootstrap5.css" rel="stylesheet" type="text/css">
</head>

<body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
<div class="wrapper">
    <%@include file="/common/admin/menu.jsp" %>

    <div class="main">
        <%@include file="/common/admin/header.jsp" %>
        <div class="content-page">
            <main>
                <div class="content">
                    <jsp:include page="${body}" />
                </div>
            </main>
        </div>

        <%@include file="/common/admin/footer.jsp" %>
    </div>


</div>

<script src="<c:url value='/template/assets/js/vendor.min.js'/>"></script>
<script src="<c:url value='/template/assets/js/app.min.js'/>"></script>

<!-- Third party JS -->
<script src="<c:url value='/template/assets/js/vendor/apexcharts.min.js'/>"></script>
<script src="<c:url value='/template/assets/js/vendor/jquery-jvectormap-1.2.2.min.js'/>"></script>
<script src="<c:url value='/template/assets/js/vendor/jquery-jvectormap-world-mill-en.js'/>"></script>

<!-- Demo app -->
<script src="<c:url value='/template/assets/js/pages/demo.dashboard.js'/>"></script>




</body>

</html>




