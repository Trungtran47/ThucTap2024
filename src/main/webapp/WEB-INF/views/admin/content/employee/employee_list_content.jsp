<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    .action-icon {
        padding: 0 6px;
    }
</style>
<script src="https://kit.fontawesome.com/6f5caf640a.js" crossorigin="anonymous"></script>
<div class="container-fluid p-0">

    <div class="card flex-fill">
        <div class="card-header d-flex justify-content-between" >

            <h5 class="card-title mb-0">Danh sách Nhân viên</h5>
            <a class="btn btn-primary" href="<c:url value='/manage/admin/employee/new'/>">Thêm Nhân Viên mới</a>
        </div>
        <table class="table table-centered table-hover my-0">
            <thead>
            <tr>

                <th class="d-none d-xl-table-cell">Id</th>
                <th class="d-none d-xl-table-cell">Tên Đăng nhập</th>

                <th class="d-none d-md-table-cell">Họ và tên</th>
                <th class="d-none d-md-table-cell">Email</th>
                <th class="d-none d-md-table-cell">Số điện thoại</th>
                <th class="d-none d-md-table-cell">Chức vụ</th>
                <th class="d-none d-md-table-cell">Trạng thái</th>
                <th class="d-none d-md-table-cell">Quản lý</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users.listResult}" var="user">
                <tr>

                    <td>${user.userId}</td>
                    <td>
                        <%
                            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
                            String username = authentication.getName();
                            pageContext.setAttribute("username", username);
                        %>
                        <p class="m-0 d-inline-block align-middle font-16">
                            <a href="apps-ecommerce-products-details.html"
                               class="text-body">${user.username}</a>
                            <c:if test="${username == user.username}">
                                <b>.bạn</b>
                            </c:if>
                        </p>
                    </td>
                    <td>${user.fullName}</td>

                    <td>${user.email}</td>

                    <td>${user.phone}</td>

                    <td>
                        <c:if test="${user.role == 1}">
                            Nhân viên
                        </c:if>
                        <c:if test="${user.role == 0}">
                            Quản lý
                        </c:if>
                    </td>
                    <td>${user.status}</td>
                    <c:if test="${user.IDManager == null}">
                        <td>Không có</td>
                    </c:if>
                    <c:if test="${user.IDManager != null}">
                        <td>${user.IDManager}</td>
                    </c:if>



                    <td class="table-action"> <a
                            href="<c:url value='/manage/product/edit/${users.userId}' />"
                            class="action-icon"> <i class="fa-solid fa-pen"></i></a>
                        <a
                                href="<c:url value='/manage/product/delete/${users.userId}' />"
                                class="action-icon"> <i class="fa-solid fa-trash"></i></a></td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
