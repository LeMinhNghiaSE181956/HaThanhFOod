<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./images/FavIco-1.png" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/my-styles.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            border-radius: 1rem;
        }

        .card-header,
        .btn-dark {
            background-color: #6c757d;
        }

        .btn-dark:hover {
            background-color: #5a6268;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #6c757d;
        }

        .custom-link {
            color: #6c757d;
            text-decoration: none;
        }

        .custom-link:hover {
            text-decoration: underline;
        }

        .btn-google {
            background-color: #db4437;
            color: white;
        }

        .btn-google:hover {
            background-color: #c23321;
        }
    </style>
</head>

<body>
    <!-- Contact Head -->
    <%@include file="components/contactHeadComponent.jsp" %>
    <!-- Navigation -->
    <%@include file="components/loginHeaderComponent.jsp" %>
    <!-- Login Session -->
    <section class="vh-100" >
        <div class="container py-5 h-100" >
            <div class="row d-flex justify-content-center align-items-center h-100" style="padding-top:-20%">
                <div class="col col-xl-10">
                    <div class="card shadow-lg">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="./images/DaNangHoiAn.jpg"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">
                                    <form action="LoginController" method="POST">
                                        <div class="d-flex align-items-center mb-3 pb-1 default-cursor">
                                            <i class="bi bi-shop-window fa-2x me-3" style="color: #6c757d;"></i>
                                            <span class="h1 fw-bold mb-0">Hà Thành Food</span>
                                        </div>
                                        <h5 class="fw-normal pb-3 default-cursor" style="letter-spacing: 1px;">Đăng nhập tài khoản của bạn</h5>
                                        <c:if test="${not empty requestScope.ERROR_MASSEGE}">
                                            <!-- Error MSG -->
                                            <div class="alert alert-danger" role="alert">
                                                ${requestScope.ERROR_MASSEGE}
                                            </div>
                                        </c:if>
                                        <c:if test="${not empty requestScope.MSG_SUCCESS}">
                                            <!-- Error MSG -->
                                            <div class="alert alert-success" role="alert">
                                                ${requestScope.MSG_SUCCESS}
                                            </div>
                                        </c:if>
                                        <div class="form-outline mb-2">
                                            <label class="form-label" for="form2Example17">Email</label>
                                            <input type="email" id="form2Example17" class="form-control form-control-lg"
                                                name="email" value="${requestScope.email}" required
                                                placeholder="example@gmail.com" />
                                        </div>
                                        <div class="form-outline mb-2">
                                            <label class="form-label" for="form2Example27">Mật khẩu</label>
                                            <input type="password" id="form2Example27"
                                                class="form-control form-control-lg" name="password" required
                                                placeholder="password" />
                                        </div>
                                        <!-- Checkbox -->
                                        <div class="form-check d-flex justify-content-start mb-4">
                                            <input class="form-check-input me-2" type="checkbox" name="remember"
                                                value="true" id="form1Example3" />
                                            <label class="form-check-label" for="form1Example3"> Nhớ mật khẩu </label>
                                        </div>
                                        <div class="pt-1 mb-4">
                                            <button class="btn btn-dark btn-lg btn-block" type="submit">Đăng nhập</button>
                                        </div>

                                        <a class="small text-muted custom-link" href="#!">Quên mật khẩu?</a>
                                        <p class="mb-3 pb-lg-2" style="color: #393f81;">
                                            Chưa có tài khoản?
                                            <c:url var="regisLink" value="RegistrationController"></c:url>
                                            <a href="${regisLink}" class="custom-link">Đăng ký tại đây</a>
                                        </p>
                                        <p class="mb-3 pb-lg-2" style="color: #393f81;">
                                            Hoặc đăng nhập nhanh bằng
                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/FlowerShop/LoginGoogleController&response_type=code
                                                   &client_id=1063985034301-03cecevenstd13h2o75brk09j5qj1u0i.apps.googleusercontent.com&approval_prompt=force"
                                                class="btn btn-google"><i class="bi bi-google"></i> Google</a>
                                        </p>
                                        <a href="#!" class="small text-muted custom-link">Điều khoản sử dụng.</a>
                                        <a href="#!" class="small text-muted custom-link">Chính sách bảo mật</a>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <div style = "margin-top:135px;"><%@include file="components/footerComponent.jsp"%></div>
    
    <!-- Bootstrap core JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS -->
    <script src="js/scripts.js"></script>
</body>

</html>
