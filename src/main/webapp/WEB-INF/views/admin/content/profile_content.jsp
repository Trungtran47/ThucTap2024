<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.security.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid p-0">

        <div class="mb-3">


        </div>
        <div class="row">
            <div class="col-md-4 col-xl-3">
                <div class="card mb-3">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Thông tin cá nhân</h5>
                    </div>
                    <div class="card-body text-center">
                        <img src="<c:url value="/template/assets/images/users/user.png"/> " alt="Christina Mason" class="img-fluid rounded-circle mb-2" width="128" height="128" />
                        <h5 class="card-title mb-0"><%=SecurityUtils.getPrincipal().getFullName()%></h5>
                        <div class="text-muted mb-2"><%=SecurityUtils.getPrincipal().getAuthorities()%></div>

                        <div>
                            <a class="btn btn-primary btn-sm" href="#">Follow</a>
                            <a class="btn btn-primary btn-sm" href="#"><span data-feather="message-square"></span> Message</a>
                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="card-body">
                        <h5 class="h6 card-title">Thông tin</h5>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-1"><span data-feather="home" class="feather-sm me-1"></span> Điện thoại: <a href="#"></a><%=SecurityUtils.getPrincipal().getPhone()%></li>
                            <li class="mb-1"><span data-feather="briefcase" class="feather-sm me-1"></span> Email: <a href="#"><%=SecurityUtils.getPrincipal().getEmail()%></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-8 col-xl-9">
                <div class="card">
                    <div class="card-header">

                        <h5 class="card-title mb-0">Chỉnh sửa</h5>
                    </div>
                    <div class="card-body h-100">
                        <form>
                            <div class="mb-3">
                                <label class="form-label">Tên Đăng Nhập</label>
                                <input class="form-control" type="text" name="username" placeholder="Tên Đăng Nhập" value="<%=SecurityUtils.getPrincipal().getUsername()%>" disabled/>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input class="form-control" type="text" name="email" placeholder="Email" value="<%=SecurityUtils.getPrincipal().getEmail()%>" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Số điện thoại</label>
                                <input class="form-control" type="text" name="phone" placeholder="Số điện thoại" value="<%=SecurityUtils.getPrincipal().getPhone()%>" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Tên</label>
                                <input class="form-control" type="text" name="fullName" placeholder="Số điện thoại" value="<%=SecurityUtils.getPrincipal().getFullName()%>" />
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Đổi mật khẩu mới</label>
                                <input class="form-control" type="text" name="newPassword" placeholder="Đổi mật khẩu mới"  />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Nhập lại mật khẩu</label>
                                <input class="form-control" type="text" name="reNewPassword" placeholder="Nhập lại mật khẩu"  />
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Mật khẩu cũ</label>
                                <input class="form-control" type="text" name="oldPasswordOld" placeholder="Mật khẩu cũ" />
                            </div>


                            <div class="d-grid gap-2 mt-3">
                                <button type="submit" class="btn  btn-primary">Cập nhật</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
