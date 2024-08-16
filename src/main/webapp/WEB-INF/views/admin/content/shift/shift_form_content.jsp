
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid p-0">
    <div class="mb-3">
        <h1 class="h3 d-inline align-middle">Forms</h1>
    </div>
    <div class="row">
        <form action="${pageContext.request.contextPath}/shifts/add" class="col-12" method="post">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Tên ca làm việc</h5>
                </div>
                <div class="card-body">
                    <input type="text" name="shiftName" class="form-control">
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Thời gian bắt đầu</h5>
                </div>
                <div class="card-body">
                    <input type="time" name="startTime" class="form-control">
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Thời gian kết thúc</h5>
                </div>
                <div class="card-body">
                    <input type="time" name="endTime" class="form-control">
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Lương</h5>
                </div>
                <div class="card-body">
                    <input type="text" name="salary" class="form-control">
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Save"></input>
        </form>
    </div>
</div>