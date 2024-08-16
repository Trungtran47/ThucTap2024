<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TDTrung
  Date: 8/14/2024
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid pt-5">
    <div class="row">

        <div class="col-sm-7">

            <div class="row gy-5">
                <% for (int i = 0; i < 5; i++) { %>
                <div class="col-3">
                    <div class="card" style="width: 100%; height: auto;">
                        <img src="<c:url value="/data/product/banhngon2-1471922491.jpg"/>" class="card-img-top" alt="..." >
                        <div class="card-body">
                            <h5 class="card-title">Bánh ngọt <%= i + 1 %></h5>
                            <%-- <a href="#" class="btn btn-primary">Go somewhere</a> --%>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>

            <%--            <c:forEach items="${products}" var="product">--%>
            <%--                <div class="row gy-5">--%>
            <%--                    <div class="col-2">--%>
            <%--                        <div class="card" style="width: 100%; height: auto;">--%>
            <%--                            <img src="<c:url value="${product.image }"/>"--%>
            <%--                                 alt="contact-img" title="contact-img" class="rounded me-3"--%>
            <%--                                 height="50" width="50" style="object-fit: cover">--%>
            <%--                            <div class="card-body">--%>
            <%--                                <h5 class="card-title">${product.productName }</h5>--%>
            <%--                                    &lt;%&ndash;                        <a href="#" class="btn btn-primary">Go somewhere</a>&ndash;%&gt;--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>

            <%--                </div>--%>
            <%--            </c:forEach>--%>

        </div>
        <div class="col-sm-5">
            <div class="container-pt5">
                <div class="row">
                    <div class="col-sm-10 col-md-8 ">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Total</th>
                                <th> </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                    <div class="media">
                                        <a class="thumbnail me-3" href="#">
                                            <img class="media-object" src="<c:url value="/data/product/banhngon2-1471922491.jpg"/>" style="width: 62px; height: 62px;">
                                        </a>
                                        <div class="media-body">
                                            <h5 class="media-heading"><a href="#">Product name</a></h5>
                                            <h5 class="media-heading"> Giá <a href="#">100k</a></h5>
                                        </div>
                                    </div>
                                </td>
                                <td class="col-sm-1 col-md-1 text-center">
                                    <input type="number" class="form-control" value="3">
                                </td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
                                <td class="col-sm-1 col-md-1">
                                    <button type="button" class="btn btn-danger">
                                        <i class="bi bi-trash"></i> Remove
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Subtotal</h5></td>
                                <td class="text-end"><h5><strong>$24.59</strong></h5></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Estimated shipping</h5></td>
                                <td class="text-end"><h5><strong>$6.94</strong></h5></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h3>Total</h3></td>
                                <td class="text-end"><h3><strong>$31.53</strong></h3></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td>
                                    <button type="button" class="btn btn-secondary">
                                        <i class="bi bi-cart"></i> Continue Shopping
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-success">
                                        Checkout <i class="bi bi-play-fill"></i>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>