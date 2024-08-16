<%--
  Created by IntelliJ IDEA.
  User: TDTrung
  Date: 8/14/2024
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-fluid">

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Danh sách hóa đơn bán hàng</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-2">
                        <div class="col-sm-4">
                            <a href="<c:url value='/manage/order-in/new'/>" class="btn btn-danger mb-2"><i class="mdi mdi-plus-circle me-2"></i> Thêm ca làm việc</a>
                        </div>
                        <div class="col-sm-8">
                            <div class="text-sm-end">
                                <button type="button" class="btn btn-success mb-2 me-1"><i class="mdi mdi-cog-outline"></i></button>
                                <button type="button" class="btn btn-light mb-2 me-1">Import</button>
                                <button type="button" class="btn btn-light mb-2">Export</button>
                            </div>
                        </div><!-- end col-->
                    </div>

                    <div class="table-responsive">
                        <table class="table table-centered" id="products-datatable">
                            <thead class="table-light">

                            <tr>
                                <th>Ca làm việc</th>
                                <th class="d-none d-xl-table-cell">Thời gian bắt đầu</th>
                                <th class="d-none d-xl-table-cell">Thời gian kết thúc</th>
                                <th>Lương</th>
                                <th class="d-none d-md-table-cell"></th>
                            </tr>

                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td class="d-none d-xl-table-cell">7:00</td>
                                <td class="d-none d-xl-table-cell">8:00</td>
                                <td class="d-none d-xl-table-cell">20.000</td>

                                <td class="table-action">
                                    <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-eye"></i></a>
                                    <a href="<c:url value='/shifts/edit/${shift.shiftId}'/>" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
                                    <a href="<c:url value='/shifts/delete/${shift.shiftId}'/>" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                </td>


                            </tr>


<%--                            <jsp:useBean id="orders" scope="request" type="java.util.List"/>--%>
<%--                            <c:forEach var="order" items="${orders}">--%>
<%--                                <tr>--%>
<%--                                        &lt;%&ndash;                                    <td>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                                        <div class="form-check">&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                                            <input type="checkbox" class="form-check-input" >&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                                            <label class="form-check-label" >&nbsp;</label>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;                                    </td>&ndash;%&gt;--%>
<%--                                    <td>${order.orderId}</td>--%>
<%--                                    <td>${order.customer.nameCustomer}</td>--%>


<%--                                    <td>${order.orderDate}</td>--%>
<%--                                    <td>${order.orderTotal}</td>--%>
<%--                                    <td>${order.user.username}</td>--%>

<%--                                        &lt;%&ndash;                <td>${order.orderType}</td>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash; <td>${order.userId}</td> &ndash;%&gt;--%>
<%--                                        &lt;%&ndash; <td>${order.customerId}</td> &ndash;%&gt;--%>
<%--                                    <!-- Điều chỉnh theo thuộc tính thực tế -->--%>
<%--                                    <!-- Điều chỉnh theo thuộc tính thực tế -->--%>

<%--                                    <td class="table-action">--%>
<%--                                        <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-eye"></i></a>--%>
<%--                                        <a href="<c:url value='/manage/order/edit/${order.orderId}' />" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>--%>
<%--                                        <a href="<c:url value='/manage/order/delete/${order.orderId }' />" class="action-icon"> <i class="mdi mdi-delete"></i></a>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>


                            </tbody>
                        </table>
                    </div>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row -->

</div>
