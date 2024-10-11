<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Blog</title>
        <!-- Favicon -->
       <link rel="icon" type="image/x-icon" href="./images/FavIco-1.png"/>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/my-styles.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/custom-blog.css" rel="stylesheet">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->    
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body class="animsition">
        <!-- Home Menu -->
        <%@include file="components/headerComponent.jsp" %>
        <!-- Toast MSG -->
        <div id="toast"></div>

        <!-- Title page -->
        <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/img-1.jpg');">
            <h2 class="ltext-105 cl0 txt-center">
                HÀ THÀNH FOOD BLOGGING
            </h2>
        </section>    

        <!-- Introduction section -->
        <section class="blog-intro bg-light p-t-30 p-b-30">
            <div class="container" style="margin-bottom: -20%">
                <h3 class="intro-title" style="font-weight: bold">Chào mừng đến với Blog của Hà Thành Mansion</h3>
                <p class="intro-text">Khám phá những bài viết hấp dẫn, chia sẻ những câu chuyện thú vị và những kinh nghiệm ẩm thực độc đáo từ Hà Thành Mansion. Chúng tôi hy vọng bạn sẽ tìm thấy những thông tin hữu ích và trải nghiệm thú vị khi ghé thăm blog của chúng tôi.</p>
            </div>
        </section>

        <!-- Content page -->
        <section class="bg0 p-t-62">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-9 p-b-80">
                        <div class="p-r-45 p-r-0-lg">
                            <!-- Example blog post -->
                            <!-- Bài viết 1 -->
                            <div class="blog-item">
                                <img src="images/blog/blog1.jpg" alt="Blog 1" class="blog-img" style="max-width: 70%">
                                <h4 style="font-weight: bold">Chốn xanh, thưởng thức lành</h4>
                                <p>Chốn mát lành tại Hà Thanh Mansion cùng những bữa cơm nhà đủ đầy sẽ xoa dịu cơn nắng đầu hè mỗi khi thực khách ghé thăm.
                                    Mùa hè cứ như thể được hạ nhiệt ngay từ khi bước vào khoảng sân mát mẻ với hàng cây rợp bóng. Không những thế, chúng tôi còn chăm chút những hương hoa theo mùa, tuyển chọn nguyên liệu tươi ngon, mang đến cho thực khách trải nghiệm trọn vẹn nhất. Hà Thành luôn là chốn an yên, xanh tươi để hòa mình vào với thiên nhiên, thưởng thức những món ngon nhà làm cùng vạn điều lành lan tỏa.</p>
                                <a href="#" class="read-more">Continue Reading<i class="bi bi-arrow-right"></i></a>
                            </div>

                            <!-- Bài viết 2 -->
                            <div class="blog-item">
                                <img src="images/blog/blog2.jpg" alt="Blog 2" class="blog-img" style="max-width: 70%">
                                <h4 style="font-weight: bold">Khoảnh khắc gắn kết bên gia đình đầy ý nghĩa</h4>
                                <p>Những điều giản dị nhưng đầy ý nghĩa 
                                    Sau một ngày làm việc bận rộn, ai trong chúng ta cũng muốn tìm về một nơi mang hương vị “gia đình” - nơi lưu giữ những tâm sự, sẻ chia bên người thân yêu!
                                    Ngay tại con phố Ngô Văn Sở cổ kính, một ngôi nhà tách biệt với những ồn ã.
                                    —— 
                                    𝐇𝐚̀ 𝐓𝐡𝐚̀𝐧𝐡 𝐌𝐚𝐧𝐬𝐢𝐨𝐧 
                                    📍 14 Ngô Văn Sở, Hoàn Kiếm, Hà Nội 
                                    ☎ Hotline: 094 639 85 58</p>
                                <a href="#" class="read-more">Continue Reading<i class="bi bi-arrow-right"></i></a>
                            </div>

                            <!-- Bài viết 3 -->
                            <div class="blog-item">
                                <img src="images/blog/blog3.jpg" alt="Blog 3" class="blog-img" style="max-width: 70%">
                                <h4 style="font-weight: bold">Không gian mang dấu ấn lịch sử</h4>
                                <p>Mảnh ký ức một thời Pháp thuộc
                                    Với sự ấm cúng, trang trọng vốn có của căn nhà cổ, chúng tôi đã đem tới đây chất liệu mang hơi hướng Tân cổ điển để mở đầu hành trình khám phá Hà Thành Mansion!
                                    Lấy cảm hứng từ kiến trúc thời kỳ Pháp thuộc, không gian tầng một là sự giao thoa của hai nền văn hóa Đông Dương truyền thống và phương Tây hiện đại. Thay vì những chi tiết cầu kỳ, phức tạp, không gian bên trong được tô điểm bởi nét nhã nhặn với nền gạch hoa mềm mại hay những mảng tường gỗ cùng đèn chùm sang trọng! Song hành với đó là sự sắp kết hợp của tông màu vàng dịu, và xanh rêu trên nền gỗ trầm ấm mang dấu ấn Á Đông đem tới sự thoải mái, gần gũi khi quý bạn tận hưởng hương vị Việt tại nơi đây!
                                    Cứ như vậy từng dấu ấn Việt tại Hà Thành Mansion như sẵn sàng cùng quý bạn kể lại câu chuyện lịch sử với hương vị khó quên!
                                    —— 
                                    𝐇𝐚̀ 𝐓𝐡𝐚̀𝐧𝐡 𝐌𝐚𝐧𝐬𝐢𝐨𝐧 
                                    📍 14 Ngô Văn Sở, Hoàn Kiếm, Hà Nội 
                                    ☎ Hotline: 094 639 85 58</p>
                                <a href="#" class="read-more">Continue Reading<i class="bi bi-arrow-right"></i></a>
                            </div>

                            <!-- Pagination -->
                            <div class="flex-l-m flex-w w-full p-t-10 m-lr--7">
                                <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1 text-decoration-none">
                                    1
                                </a>
                                <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 text-decoration-none">
                                    2
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Side Menu -->
                    <div class="col-md-4 col-lg-3 p-b-80">
                        <div class="side-menu">
                            <div class="bor17 of-hidden pos-relative">
                                <input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">

                                <button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </div>

                            <div class="p-t-55">
                                <h4 class="mtext-112 cl2 p-b-33">
                                    Categories
                                </h4>

                                <ul>
                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Category 1
                                        </a>
                                    </li>

                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Category 2
                                        </a>
                                    </li>

                                    <!-- More categories -->
                                </ul>
                            </div>



                            <div class="p-t-55">
                                <h4 class="mtext-112 cl2 p-b-20">
                                    Archive
                                </h4>

                                <ul>
                                    <li class="p-b-7">
                                        <a href="#" class="stext-115 cl6 hov-cl1 trans-04">
                                            July 2024
                                        </a>
                                    </li>
                                    <!-- More archives -->
                                </ul>
                            </div>

                            <div class="p-t-50">
                                <h4 class="mtext-112 cl2 p-b-27">
                                    Tags
                                </h4>

                                <h4 class="mtext-112 cl2 p-b-27">
                                    Tags
                                </h4>

                                <div class="flex-w m-r--5">
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Món ngon
                                    </a>
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Ẩm thực Việt
                                    </a>
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Không gian đẹp
                                    </a>
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Nhà hàng
                                    </a>
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Dịch vụ tốt
                                    </a>
                                    <a href="#" class="flex-c-m stext-108 cl6 size-301 bor7 hov-tag1 trans-04 m-all-5">
                                        Địa điểm lý tưởng
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <c:if test="${empty sessionScope.LOGIN_USER}">
            <!-- Subscribe News Letter -->
            <%@include file="components/subscribeNewsLetterComponent.jsp" %>
        </c:if>
        <!-- Footer -->
        <%@include file="components/footerComponent.jsp" %>
        <!-- Back to top -->
        <div class="btn-back-to-top" id="myBtn">
            <span class="symbol-btn-back-to-top">
                <i class="zmdi zmdi-chevron-up"></i>
            </span>
        </div>
        <!-- Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Toast Alert script -->
        <script src="js/toast-alert.js"></script>
        <!-- Axios Async -->
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <!-- Add-to-cart async script -->
        <script src="js/add-to-cart-async.js"></script>
        <!-- Load-more script -->
        <script src="js/load-more.js"></script>
        <!-- Subscribe News Letter script -->
        <script src="js/subscribe-newsletter.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <script>
            $(".js-select2").each(function () {
                $(this).select2({
                    minimumResultsForSearch: 20,
                    dropdownParent: $(this).next('.dropDownSelect2')
                });
            })
        </script>
        <!--===============================================================================================-->
        <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
    </body>
</html>
