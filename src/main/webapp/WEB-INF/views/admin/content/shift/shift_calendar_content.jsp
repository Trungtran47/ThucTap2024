<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<style>
    .full-width {
        display: block;
        width: 100%;
        height: 100%;
        text-align: center;
        padding: 0;
        box-sizing: border-box; /* Đảm bảo padding và border không vượt ra ngoài chiều rộng của ô */
    }

    /* Tùy chỉnh thêm cho nút để có chiều cao phù hợp */
    .table td {
        vertical-align: middle;
    }
    .bg-warning-lighten {
        background-color: rgba(255, 193, 7, 0.5); /* Màu vàng của Bootstrap warning với 50% opacity */
    }

</style>
<%
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy EEEE");
    pageContext.setAttribute("formatter", formatter);
    LocalDate today = (LocalDate) request.getAttribute("today");
    pageContext.setAttribute("today", today);
%>
<!-- Start Content-->
<div class="container-fluid">

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Lịch làm việc</h4>
                <!-- Navigation buttons -->

            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-12">

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="d-grid">
                                <button class="btn btn-lg font-16 btn-danger" id="btn-new-event"><i class="mdi mdi-plus-circle-outline"></i> Create New Event</button>
                            </div>
                            <div id="event-list" class="m-t-20">
                                <p class="text-muted">List of events</p>
                                <ul class="list-group">
                                    <li class="list-group-item bg-success-lighten text-success">
                                        <i class="mdi mdi-checkbox-blank-circle me-2 vertical-middle"></i> New Theme Release
                                    </li>
                                    <li class="list-group-item bg-info-lighten text-info">
                                        <i class="mdi mdi-checkbox-blank-circle me-2 vertical-middle"></i> My Event
                                    </li>
                                    <li class="list-group-item bg-warning-lighten text-warning">
                                        <i class="mdi mdi-checkbox-blank-circle me-2 vertical-middle"></i> Meet Manager
                                    </li>
                                    <li class="list-group-item bg-danger-lighten text-danger">
                                        <i class="mdi mdi-checkbox-blank-circle me-2 vertical-middle"></i> Create New Theme
                                    </li>
                                </ul>
                            </div>
                        </div> <!-- end col-->

                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-5">
                                    <div class="btn-group" role="group" aria-label="View Switcher">
                                        <button type="button" class="btn btn-primary" >trước</button>
                                        <button type="button" class="btn btn-primary" >Sau</button>

                                    </div>
                                </div>
                                <div class="col-3">
                                    <h5>${today.format(formatter)}</h5>
                                </div>
                                <div class="col-4" style="display: flex; justify-content: flex-end;">
                                    <div class="btn-group" role="group" aria-label="View Switcher">
                                        <button type="button" class="btn btn-primary" id="btn-daily-view">Ngày</button>
                                        <button type="button" class="btn btn-primary" id="btn-weekly-view">Tuần</button>
                                        <button type="button" class="btn btn-primary" id="btn-today-employees">Ca</button>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-4 mt-lg-0 pt-3">

                                <!-- Calendar-like Grid -->
                                <div id="schedule-view" class="calendar-view">
                                    <!-- Daily View -->
                                    <div id="daily-view" class="schedule-content">
                                        <h5>Ca làm việc Ngày: </h5>
                                        <div class="table-responsive">
                                            <table class="table table-bordered calendar-table">
                                                <thead>
                                                <tr>
                                                    <th>Thời gian</th>
                                                    <th>Ca Làm việc</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>08:00 - 09:00</td>
                                                    <td class="calendar-cell" data-day="Monday" data-time="08:00 - 09:00">Shift 1</td>
                                                </tr>
                                                <tr>
                                                    <td>09:00 - 10:00</td>
                                                    <td class="calendar-cell" data-day="Monday" data-time="08:00 - 09:00">Shift 1</td>
                                                </tr>
                                                <!-- Add more rows as needed -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Weekly View -->
                                    <div id="weekly-view" class="schedule-content d-none">
                                        <h5>Tuần</h5>
                                        <!-- Similar table structure as daily view, but adjusted for weekly view -->
                                        <div class="table-responsive">
                                            <table class="table table-bordered calendar-table" style="max-height: 400px; overflow-y: auto;">
                                                <thead>
                                                <tr>
                                                    <th>Thời gian</th>

                                                    <c:forEach var="day" items="${daysOfWeek}">
                                                        <th class="${day.equals(today) ? 'bg-warning-lighten' : ''}">
                                                                ${day.format(formatter)}
                                                        </th>
                                                    </c:forEach>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${shifts}" var="shift">
                                                    <tr>
                                                        <td>${shift.startTime}</td>
                                                        <c:forEach var="item" items="${daysOfWeek}">
                                                            <td rowspan="2" class="text-center ${item.equals(today) ? "bg-warning-lighten" : ""}">
                                                                <!-- Nút End Time -->
                                                                <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#editModal"
                                                                        data-shift-id="${shift.shiftId}"
                                                                        data-shift-date="${item}"
                                                                >${shift.shiftName}</button>
                                                            </td>

                                                        </c:forEach>
                                                    </tr>
                                                    <tr>
                                                        <td>${shift.endTime}</td>
                                                    </tr>
                                                </c:forEach>
                                                <tr>
                                                    <td>08:00 - 09:00</td>
                                                    <td class="calendar-cell" data-day="Monday" data-time="08:00 - 09:00">Shift 1</td>
                                                    <td class="calendar-cell" data-day="Tuesday" data-time="08:00 - 09:00">Shift 2</td>
                                                    <td class="calendar-cell" data-day="Wednesday" data-time="08:00 - 09:00">Shift 3</td>
                                                    <td class="calendar-cell" data-day="Thursday" data-time="08:00 - 09:00">Shift 4</td>
                                                    <td class="calendar-cell" data-day="Friday" data-time="08:00 - 09:00">Shift 5</td>
                                                    <td class="calendar-cell" data-day="Saturday" data-time="08:00 - 09:00">Shift 6</td>
                                                    <td class="calendar-cell" data-day="Sunday" data-time="08:00 - 09:00">Shift 7</td>
                                                </tr>
                                                <!-- Add more rows as needed -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <!-- Today's Employees -->
                                    <div id="today-employees" class="schedule-content d-none">
                                        <h5>Nhân viên làm việc hôm nay</h5>
                                        <!-- Example list of employees -->
                                        <ul class="list-group">
                                            <li class="list-group-item">Employee 1</li>
                                            <li class="list-group-item">Employee 2</li>
                                            <li class="list-group-item">Employee 3</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end col -->

                    </div> <!-- end row -->
                </div> <!-- end card body-->
            </div> <!-- end card -->

            <!-- Add New Event MODAL -->
            <!-- Modal -->
            <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">Chỉnh sửa nhân viên trong ca làm việc</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editForm" action="<c:url value="/manage/manager/shift/edit-employees"/>" method="post">
                                <!-- Danh sách nhân viên hiện tại trong ca -->
                                <div class="mb-3">
                                    <label class="form-label">Nhân viên trong ca:</label>
                                    <ul id="employeeList" class="list-group">
                                        <!-- Danh sách nhân viên sẽ được tạo động -->
                                        <c:forEach var="employee" items="${employeesInShift}">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                    ${employee.name}
                                                <button type="button" class="btn btn-danger btn-sm" onclick="removeEmployee('${employee.id}')">Xóa</button>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <!-- Thêm nhân viên mới vào ca -->
                                <div class="mb-3">
                                    <label for="newEmployee" class="form-label">Thêm nhân viên:</label>
                                    <select class="form-select" id="newEmployee" name="newEmployeeId">
                                        <option value="" disabled selected>Chọn nhân viên</option>
                                        <c:forEach var="employee" items="${allEmployees}">
                                            <option value="${employee.id}">${employee.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <input type="hidden" id="shiftId" name="shiftId" value="${shiftId}">
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                    <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- end modal-->
        </div>
        <!-- end col-12 -->
    </div> <!-- end row -->

</div> <!-- container -->

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var dailyView = document.getElementById('daily-view');
        var weeklyView = document.getElementById('weekly-view');
        var todayEmployeesView = document.getElementById('today-employees');

        document.getElementById('btn-daily-view').addEventListener('click', function () {
            dailyView.classList.remove('d-none');
            weeklyView.classList.add('d-none');
            todayEmployeesView.classList.add('d-none');
        });

        document.getElementById('btn-weekly-view').addEventListener('click', function () {
            dailyView.classList.add('d-none');
            weeklyView.classList.remove('d-none');
            todayEmployeesView.classList.add('d-none');
        });

        document.getElementById('btn-today-employees').addEventListener('click', function () {
            dailyView.classList.add('d-none');
            weeklyView.classList.add('d-none');
            todayEmployeesView.classList.remove('d-none');
        });

        <%--// Add click event to cells--%>
        <%--var calendarCells = document.querySelectorAll('.calendar-cell');--%>
        <%--calendarCells.forEach(cell => {--%>
        <%--    cell.addEventListener('click', function () {--%>
        <%--        var day = this.getAttribute('data-day');--%>
        <%--        var time = this.getAttribute('data-time');--%>
        <%--        var employeeId = prompt(`Assign employee to ${day} ${time}:`);--%>
        <%--        if (employeeId) {--%>
        <%--            // Make API call to assign employee (Update this URL as needed)--%>
        <%--            $.post(`/Mock-Project/manage/manager/shift/${day}/${time}/assign`, { employeeId: employeeId }, function () {--%>
        <%--                alert('Employee assigned successfully!');--%>
        <%--            });--%>
        <%--        }--%>
        <%--    });--%>
        <%--});--%>


        // Lắng nghe sự kiện khi modal được hiển thị
        $('#editModal').on('show.bs.modal', function(event) {
            // Lấy thông tin từ nút đã kích hoạt modal
            var button = $(event.relatedTarget);
            var shiftId = button.data('shift-id'); // Lấy shiftId từ thuộc tính data của nút
            console.log(shiftId)
            // Gọi API để lấy danh sách nhân viên trong ca
            fetch(`/Mock-Project/manage/manager/shift/api/detail/`+ shiftId)
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    // Làm trống danh sách nhân viên hiện tại
                    $('#employeeList').empty();

                    // Thêm các nhân viên vào danh sách
                    data.employeesInShift.forEach(employee => {
                        $('#employeeList').append(
                            `<li class="list-group-item d-flex justify-content-between align-items-center">
                            ${employee.user.fullName}
                            <button type="button" class="btn btn-danger btn-sm" onclick="removeEmployee(${employee.id})">Xóa</button>
                        </li>`
                        );
                    });

                    // Cập nhật các tùy chọn trong select
                    $('#newEmployee').empty().append('<option value="" disabled selected>Chọn nhân viên</option>');
                    data.allEmployees.forEach(employee => {
                        $('#newEmployee').append(`<option value="${employee.id}">${employee.name}</option>`);
                    });

                    // Gán giá trị shiftId vào input ẩn
                    $('#shiftId').val(shiftId);
                })
                .catch(error => {
                    console.error('Error fetching employee data:', error);
                });
        });



    });



    // Hàm để xóa nhân viên khỏi danh sách
    function removeEmployee(employeeId) {
        $('#employee-' + employeeId).remove(); // Xóa nhân viên khỏi danh sách
    }

    // Hàm để thêm nhân viên mới vào danh sách
    function addEmployee() {
        var newEmployeeId = $('#newEmployee').val(); // Lấy ID nhân viên mới từ select
        var newEmployeeName = $('#newEmployee option:selected').text(); // Lấy tên nhân viên mới

        // Kiểm tra xem nhân viên đã có trong danh sách hay chưa
        if ($('#employee-' + newEmployeeId).length == 0) {
            // Thêm nhân viên mới vào danh sách
            $('#employeeList').append(
                '<li id="employee-' + newEmployeeId + '" class="list-group-item d-flex justify-content-between align-items-center">' +
                newEmployeeName +
                '<button type="button" class="btn btn-danger btn-sm" onclick="removeEmployee(' + newEmployeeId + ')">Xóa</button>' +
                '</li>'
            );
        } else {
            alert('Nhân viên này đã có trong ca.');
        }
    }

    // Gọi hàm addEmployee() khi submit form
    $('#editForm').on('submit', function(event) {
        event.preventDefault();
        addEmployee();
    });


</script>
