<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.security.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid p-0">

    <div class="mb-3">


    </div>

    <div class=" col-xl-9">
        <div class="card">
            <div class="card-header">

                <h5 class="card-title mb-0">Chỉnh sửa</h5>
            </div>
            <div class="card-body h-100">
                <form>
                    <div class="mb-3">
                        <label class="form-label">Tên Đăng Nhập</label>
                        <input class="form-control form-control-lg" type="text" name="username" placeholder="Tên Đăng Nhập"  />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input class="form-control form-control-lg" type="text" name="email" placeholder="Email"  />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Số điện thoại</label>
                        <input class="form-control form-control-lg" type="text" name="phone" placeholder="Số điện thoại"  />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tên</label>
                        <input class="form-control form-control-lg" type="text" name="fullName" placeholder="Số điện thoại"  />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mật khẩu </label>
                        <input class="form-control form-control-lg" type="password" name="newPassword" placeholder="Mật khẩu"  />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nhập lại mật khẩu</label>
                        <input class="form-control form-control-lg" type="password" name="reNewPassword" placeholder="Nhập lại mật khẩu"/>
                    </div>
                    <div class="mb-3">
                        <label for="role" class="form-label">Chức vụ</label>
                        <select class="form-select" id="role"
                                name="role" required>
                            <option value="">Chức vụ</option>
                            <option value="1">Nhân Viên</option>
                            <option value="0">Quản lý</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="ManagerId" class="form-label">Quản lý</label>
                        <select class="form-select" id="ManagerId"
                                name="role" required>
                            <option value="">Quản lý</option>
                            <c:forEach var="manager" items="${managers}">
                                <option value="${manager.IDManager}">
                                        ${manager.username}
                                </option>

                            </c:forEach>
                        </select>
                    </div>

                    <div class="d-grid gap-2 mt-3">
                        <button type="submit" class="btn btn-lg btn-primary">Thêm </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
