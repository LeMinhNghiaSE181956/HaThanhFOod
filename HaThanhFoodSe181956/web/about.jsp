<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>About us</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./images/FavIco-1.png"/>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/my-styles.css" rel="stylesheet">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body class="animsition">
    <!-- Home Menu -->
    <%@include file="components/headerComponent.jsp" %>
    <!-- About -->
    <div class="bg-white">
        <div class="container py-3">
            <div class="row align-items-center">
                <div style="max-width: 40%"><img src="./images/Cong.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="text-black">Chào mừng đến với Hà Thành Mansion</h2>
                    <p class="font-italic text-muted mt-3 mb-4">Hà Thành Mansion - nơi mang đến cho bạn những trải nghiệm ẩm thực đậm chất truyền thống Việt Nam, giữa không gian xanh mát và thoáng đãng.</p><a href="https://www.facebook.com/hathanhmansion" class="btn btn-light px-5 rounded-pill shadow-sm">Tìm hiểu thêm</a>
                </div>
            </div>
            <div class="row align-items-center mb-5">
                <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                    <h2 class="text-black">Cơ sở chính tại Hà Nội</h2>
                    <p class="font-italic text-muted mt-3 mb-4">Hà Thành Mansion tự hào với không gian truyền thống và hiện đại hòa quyện, mang lại cho bạn trải nghiệm ẩm thực đặc sắc và độc đáo.</p>
                    <a href="https://www.hathanhmansion.vn/menu" class="btn btn-light px-5 rounded-pill shadow-sm">Tìm hiểu thêm</a>
                </div>
                <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.294567271403!2d105.8464851102617!3d21.02089648054565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abad2e7845f3%3A0xc5b1757ef25edcca!2sH%C3%A0%20Th%C3%A0nh%20Mansion%20Vietnamese%20Restaurant!5e0!3m2!1sen!2s!4v1719501352790!5m2!1sen!2s" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
            </div>
        </div>
    </div>
    <div class="bg-light">
        <div class="container py-3">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 text-black">Đội ngũ của chúng tôi</h2>
                    <p class="font-italic text-muted">Chúng tôi luôn nỗ lực mang đến cho bạn những trải nghiệm ẩm thực tốt nhất.</p>
                </div>
            </div>
            <div class="row text-center">
                <!-- Team item-->
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="./images/ceo.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0 text-black">Lê Minh Nghĩa</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="https://www.facebook.com/LMNmin" class="social-link"><i class="bi bi-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://github.com/tommylead" class="social-link"><i class="bi bi-github"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.instagram.com/" class="social-link"><i class="bi bi-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.linkedin.com/in/khoahd7621/?fbclid=IwAR2mB1D7HMm83CI1r7icI9xdkp436ZBc42VABtbttL7YXqHa7lZ4mGuK7NI" class="social-link"><i class="bi bi-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- End-->
            </div>
        </div>
    </div>
    <div class="bg-light">
        <div class="container py-3">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 text-black">Mạng xã hội</h2>
                    <p class="font-italic text-muted">Kết nối với chúng tôi qua mạng xã hội để cập nhật những tin tức mới nhất.</p>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-lg-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <h5 class="mb-0 text-black">Facebook</h5>
                        <iframe  src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fphoto.php%3Ffbid%3D188523970973244%26set%3Da.111372062021769%26type%3D3&show_text=true&width=500" width="500" height="250" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>
                </div>
                <div class="col-lg-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <h5 class="mb-0 text-black">YouTube</h5>
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/fNOfkNc9AJE?si=7ryXlexLJaWn1k9a" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Subscribe News Letter -->
    <%@include file="components/subscribeNewsLetterComponent.jsp" %>
    <!-- Footer -->
    <%@include file="components/footerComponent.jsp" %>
    <!-- Bootstrap core JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Toast Alert script -->
    <script src="js/toast-alert.js"></script>
    <script src="js/subscribe-newsletter.js"></script>
    <!-- Home Slider JS -->
    <script src="vendor/slick/slick.min.js"></script>
    <script src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
        $('.js-pscroll').each(function () {
            $(this).css('position', 'relative');
            $(this).css('overflow', 'hidden');
            var ps = new PerfectScrollbar(this, {
                wheelSpeed: 1,
                scrollingThreshold: 1000,
                wheelPropagation: false,
            });

            $(window).on('resize', function () {
                ps.update();
            })
        });
    </script>
    <!-- Main -->
    <script src="js/main.js"></script>
</body>

</html>
