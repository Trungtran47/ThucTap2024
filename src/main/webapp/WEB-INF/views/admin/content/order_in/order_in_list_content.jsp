<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!-- Start Content-->
<div class="container-fluid">

  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box">
        <div class="page-title-right">
          <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
            <li class="breadcrumb-item"><a href="javascript: void(0);">eCommerce</a></li>
            <li class="breadcrumb-item active">Products</li>
          </ol>
        </div>
        <h4 class="page-title">Products</h4>
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
              <a href="<c:url value='/products/new' />" class="btn btn-danger mb-2"><i
                      class="mdi mdi-plus-circle me-2"></i> Add Products</a>
            </div>

          </div>

          <div class="table-responsive">
            <table id="example" class="table table-centered" style="width: 100%">
              <thead class="table-light">

              <tr>
                <th>STT</th>
                <th>Product</th>
                <th>Category</th>

                <th>Price</th>
                <th>Status</th>
                <th style="width: 85px;">Action</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>a</td>
                <td>a</td>
                <td>a</td>
                <td>a</td>
                <td>a</td>
                <td>a</td>
              </tr>

<%--              <c:forEach items="${products}" var="product">--%>
<%--                <tr>--%>

<%--                  <td></td>--%>
<%--                  <td><img src="<c:url value=" ${product.productImage }" />"--%>
<%--                           alt="contact-img" title="contact-img" class="rounded me-3"--%>
<%--                           height="50" width="50" style="object-fit: cover">--%>
<%--                    <p class="m-0 d-inline-block align-middle font-16">--%>
<%--                      <a href="apps-ecommerce-products-details.html"--%>
<%--                         class="text-body">${product.productName }</a>--%>

<%--                    </p>--%>
<%--                  </td>--%>
<%--                  <td>${product.category.categoryName}</td>--%>

<%--                  <td>${product.productPrice}</td>--%>


<%--                  <td>--%>
<%--                    <c:choose>--%>
<%--                      <c:when test="${product.isActive}">--%>
<%--                        <span class="badge bg-success">Active</span>--%>
<%--                      </c:when>--%>
<%--                      <c:otherwise>--%>
<%--                        <span class="badge bg-danger">Inactive</span>--%>
<%--                      </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                  </td>--%>
<%--                  <td class="table-action"><a href="javascript:void(0);"--%>
<%--                                              class="action-icon"> <i class="mdi mdi-eye"></i></a> <a--%>
<%--                          href="<c:url value='/products/edit/${product.productId }' />"--%>
<%--                          class="action-icon"> <i--%>
<%--                          class="mdi mdi-square-edit-outline"></i></a> <a--%>
<%--                          href="<c:url value='/products/delete/${product.productId }' />"--%>
<%--                          class="action-icon"> <i class="mdi mdi-delete"></i></a></td>--%>
<%--                </tr>--%>

<%--              </c:forEach>--%>


              </tbody>
            </table>
          </div>
        </div>
        <!-- end card-body-->
      </div>
      <!-- end card-->
    </div>
    <!-- end col -->
  </div>
  <!-- end row -->

</div>
<!-- container -->


<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/2.1.3/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.1.3/js/dataTables.bootstrap5.js"></script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    new DataTable('#example', {
      "rowCallback": function(row, data, index) {
        // Gán giá trị STT
        $('td:eq(0)', row).html(index + 1); // Cột đầu tiên là STT
      }
    });
  });
</script>