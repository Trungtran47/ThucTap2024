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
            <h5 class="card-title mb-0">Danh sách sản phẩm</h5>
            <a class="btn btn-primary" href="<c:url value='/manage/product/new'/>">Thêm sản phẩm</a>
        </div>
        <table class="table table-centered table-hover my-0">
            <thead>
            <tr>

                <th class="d-none d-xl-table-cell">Id</th>
                <th class="d-none d-xl-table-cell">Sản phẩm</th>

                <th class="d-none d-md-table-cell">Danh mục</th>
                <th class="d-none d-md-table-cell">Giá</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>

                    <td>${product.productId}</td>
                    <td><img src="<c:url value="/${product.image}"/>"
                             alt="contact-img" title="contact-img" class="rounded me-3"
                             height="50" width="50" style="object-fit: cover">
                        <p class="m-0 d-inline-block align-middle font-16">
                            <a href="apps-ecommerce-products-details.html"
                               class="text-body">${product.productName }</a>

                        </p></td>
                    <td>${product.category.categoryName}</td>

                    <td>${product.price}</td>



                    <td class="table-action"> <a
                            href="<c:url value='/manage/product/edit/${product.productId }' />"
                            class="action-icon"> <i class="fa-solid fa-pen"></i></a>
                        <a
                                href="<c:url value='/manage/product/delete/${product.productId }' />"
                                class="action-icon"> <i class="fa-solid fa-trash"></i></a></td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
