<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="components/adminHeadComponent.jsp" %>
        <title>Admin - Dashboard</title>
        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f8f9fa;
            }
            .container-fluid {
                padding: 20px;
            }
            .breadcrumb {
                background: none;
                padding: 10px 0;
                margin-bottom: 20px;
            }
            .card {
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                border-radius: 10px;
                border: none;
                margin-bottom: 20px;
            }
            .card-header {
                background-color: #fff;
                border-bottom: 1px solid #e3e6f0;
                padding: 15px;
                font-weight: bold;
            }
            .card-body {
                padding: 20px;
            }
            table {
                width: 100%;
                margin-bottom: 1rem;
                color: #858796;
                border-collapse: collapse;
            }
            table th, table td {
                padding: 12px;
                text-align: left;
            }
            table thead th {
                background-color: #f8f9fa;
                border-bottom: 2px solid #e3e6f0;
            }
            table tbody tr {
                border-bottom: 1px solid #e3e6f0;
            }
            table tbody tr:nth-child(even) {
                background-color: #f8f9fa;
            }
            table tbody tr:hover {
                background-color: #e2e6ea;
            }
            .btn-outline-danger, .btn-outline-success {
                width: 100%;
                padding: 8px;
                border-radius: 5px;
                font-weight: bold;
            }
            .btn-outline-danger {
                border: 1px solid #e74a3b;
                color: #e74a3b;
                background-color: #fff;
            }
            .btn-outline-danger:hover {
                background-color: #e74a3b;
                color: #fff;
            }
            .btn-outline-success {
                border: 1px solid #1cc88a;
                color: #1cc88a;
                background-color: #fff;
            }
            .btn-outline-success:hover {
                background-color: #1cc88a;
                color: #fff;
            }
            .modal-content {
                border-radius: 10px;
                border: none;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
            .modal-header {
                border-bottom: none;
                padding: 20px;
                font-weight: bold;
            }
            .modal-footer {
                border-top: none;
                padding: 20px;
            }
            .fs-3 {
                font-size: 1.75rem;
            }
            .text-primary {
                color: #4e73df !important;
            }
            .text-warning {
                color: #f6c23e !important;
            }
            .text-danger {
                color: #e74a3b !important;
            }
            .text-success {
                color: #1cc88a !important;
            }
            .text-body {
                color: #858796 !important;
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
        <%@include file="components/adminNavBarComponent.jsp" %>
        <div id="layoutSidenav">
            <%@include file="components/adminSlideNavComponent.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Overview</li>
                        </ol>
                        <!-- Account Table -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="bi bi-table"></i>
                                Accounts table
                            </div>
                            <div class="card-body">
                                <table id="accountsTable">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Email</th>
                                            <th>Name</th>
                                            <th>Password</th>
                                            <th>Phone</th>
                                            <th>Status</th>
                                            <th>Role</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Email</th>
                                            <th>Name</th>
                                            <th>Password</th>
                                            <th>Phone</th>
                                            <th>Status</th>
                                            <th>Role</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${requestScope.listAccounts}" var="LA">
                                            <tr>
                                                <td>${LA.accId}</td>
                                                <td>${LA.email}</td>
                                                <td>${LA.fullName}</td>
                                                <td>${LA.password}</td>
                                                <td>${LA.phone}</td>
                                                <c:choose>
                                                    <c:when test="${LA.status == 1}">
                                                        <td class="text-success">Active</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-danger">Inactive</td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${LA.role == 1}">
                                                        <td class="text-primary">Admin</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td>User</td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Orders Table -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="bi bi-table"></i>
                                Orders table
                            </div>
                            <div class="card-body">
                                <table id="ordersTable">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Order Date</th>
                                            <th>Ship Date</th>
                                            <th>Note</th>
                                            <th>Total Price</th>
                                            <th>Acc Id</th>
                                            <th>Status</th>
                                            <th>Shipping Id</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Order Date</th>
                                            <th>Ship Date</th>
                                            <th>Note</th>
                                            <th>Total Price</th>
                                            <th>Status</th>
                                            <th>Acc Id</th>
                                            <th>Shipping Id</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${requestScope.listOrders}" var="LO">
                                            <tr>
                                                <td>${LO.orderId}</td>
                                                <td>${LO.orderDate}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${not empty LO.shipDate}">
                                                            ${LO.shipDate}
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="fst-italic">Null</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td>${LO.note}</td>
                                                <td>$${LO.totalPrice}</td>
                                                <td>${LO.accId}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${LO.status == 1}">
                                                            <span class="text-warning">Processing</span>
                                                        </c:when>
                                                        <c:when test="${LO.status == 2}">
                                                            <span class="text-primary">Completed</span>
                                                        </c:when>
                                                        <c:when test="${LO.status == 3}">
                                                            <span class="text-danger">Canceled</span>
                                                        </c:when>
                                                    </c:choose>
                                                </td>
                                                <td>${LO.shippingId}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Plant table -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="bi bi-table"></i>
                                Plants table
                            </div>
                            <div class="card-body">
                                <table id="plantsTable">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th style="width: 100px;">Image</th>
                                            <th>Price</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Category</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th style="width: 100px;">Image</th>
                                            <th>Price</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>Category</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${requestScope.listPlants}" var="LP">
                                            <tr>
                                                <td>${LP.id}</td>
                                                <td>${LP.name}</td>
                                                <td style="width: 100px;"><img src="${LP.imgPath}" style="width: 50%;"></td>
                                                <td>$${LP.price}</td>
                                                <td>${LP.description}</td>
                                                <c:choose>
                                                    <c:when test="${LP.status == 1}">
                                                        <td class="text-success">Available</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-danger">Unavailable</td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td>
                                                    ${sessionScope.listCategories.get(LP.categoryId)}
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- Footer -->
                <jsp:include page="components/adminFooter.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
   
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
