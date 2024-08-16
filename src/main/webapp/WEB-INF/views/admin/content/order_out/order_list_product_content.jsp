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
                            <a href="<c:url value='/manage/order-in/new'/>" class="btn btn-danger mb-2"><i class="mdi mdi-plus-circle me-2"></i> Thêm đơn hàng</a>
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
<%--                                <th class="all" style="width: 20px;">--%>
<%--                                    <div class="form-check">--%>
<%--                                        <input type="checkbox" class="form-check-input" id="customCheck1">--%>
<%--                                        <label class="form-check-label" for="customCheck1">&nbsp;</label>--%>
<%--                                    </div>--%>
<%--                                </th>--%>
                                <th class="all">ID</th>
                                <th>Tên khách hàng</th>


                                <th>Ngày đặt</th>
                                <th>Tổng tiền</th>
                                <th>Người bán</th>
                                <th></th>

                            </tr>
                            </thead>
                            <tbody>

                            <jsp:useBean id="orders" scope="request" type="java.util.List"/>
                            <c:forEach var="order" items="${orders}">
                                <tr>
<%--                                    <td>--%>
<%--                                        <div class="form-check">--%>
<%--                                            <input type="checkbox" class="form-check-input" >--%>
<%--                                            <label class="form-check-label" >&nbsp;</label>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
                                    <td>${order.orderId}</td>
                                    <td>${order.customer.nameCustomer}</td>


                                    <td>${order.orderDate}</td>
                                    <td>${order.orderTotal}</td>
                                    <td>${order.user.username}</td>

                                        <%--                <td>${order.orderType}</td>--%>
                                        <%-- <td>${order.userId}</td> --%>
                                        <%-- <td>${order.customerId}</td> --%>
                                    <!-- Điều chỉnh theo thuộc tính thực tế -->
                                     <!-- Điều chỉnh theo thuộc tính thực tế -->

                                    <td class="table-action">
                                        <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-eye"></i></a>
                                        <a href="<c:url value='/manage/order/edit/${order.orderId}' />" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
                                        <a href="<c:url value='/manage/order/delete/${order.orderId }' />" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>


                            </tbody>
                        </table>
                    </div>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row -->

</div>
