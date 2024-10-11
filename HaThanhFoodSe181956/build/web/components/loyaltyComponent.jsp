<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="loyalty-section" class="pt-5 text-black">
    <div class="d-flex align-items-center justify-content-center default-cursor fs-1 section-title wow fadeInDown" data-wow-duration="2s">
        <hr class="d-inline-block me-3" width="10%" />
        Chương Trình Khách Hàng Thân Thiết
        <hr class="d-inline-block ms-3" width="10%" />
    </div>
    <div class="container px-4 px-lg-5 mt-4">
        <div class="detail row">
            <div class="col-lg-6 left-ly d-flex justify-content-center align-items-center">
                <div class="image-container">
                    <img class="img-1 wow fadeInLeft" data-wow-duration="1.5s" style="width: 70%" src="images/VietnameseFood.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 right-ly d-flex flex-column align-items-center justify-content-center">
                <div class="title default-cursor wow fadeInRight" data-wow-duration="1.5s">Gắn Kết <span class="fw-bold">Yêu Thương</span> và <span class="fw-bold">Qua Từng Bữa Ăn</span></div>
                <p class="mt-4 mb-5 default-cursor wow fadeInRight" data-wow-duration="1.5s" data-wow-delay="0.3s">Hãy <a href="registration.jsp" class="text-decoration-none text-danger">Đăng Ký Tài Khoản</a> ngay hôm nay và mỗi khi bạn mua sắm trực tuyến với chúng tôi, bạn sẽ nhận được Điểm Thưởng Thân Thiết được áp dụng vào tài khoản của bạn dưới dạng tín dụng để sử dụng trong tương lai. Điểm thưởng có thể được quy đổi tại quầy thanh toán để tiết kiệm cho các lần mua sắm tiếp theo. Điểm thưởng của bạn sẽ tự động được áp dụng vào ngày hôm sau sau khi mua hàng.</p>
                <div class="row w-100 dsc default-cursor">
                    <div class="dsc1 col-4 d-flex flex-column justify-content-center align-items-center wow fadeInUp" data-wow-duration="1.5s">
                        <div class="w-100 text-center border border-1 border-bottom-0 fw-bold fs-4 pt-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            0 VNĐ - 500,000 VNĐ</div>
                        <div class="w-100 text-center border border-1 border-top-0 border-bottom-0 text-danger ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            Hoàn tiền 7%</div>
                        <div class="w-100 text-center border border-1 border-top-0 pb-4 pb-lg-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0"
                             style="font-size: 12px;">Trên mỗi đồng bạn chi tiêu</div>
                    </div>
                    <div class="dsc2 col-4 d-flex flex-column justify-content-center align-items-center wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <div class="w-100 text-center border border-1 border-bottom-0 fw-bold fs-4 pt-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            501,000 VNĐ - 1,500,000 VNĐ</div>
                        <div class="w-100 text-center border border-1 border-top-0 border-bottom-0 text-danger ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            Hoàn tiền 10%</div>
                        <div class="w-100 text-center border border-1 border-top-0 pb-4 pb-lg-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0"
                             style="font-size: 12px;">Trên mỗi đồng bạn chi tiêu</div>
                    </div>
                    <div class="dsc3 col-4 d-flex flex-column justify-content-center align-items-center wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.6s">
                        <div class="w-100 text-center border border-1 border-bottom-0 fw-bold fs-4 pt-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            1,500,000+ VNĐ</div>
                        <div class="w-100 text-center border border-1 border-top-0 border-bottom-0 text-danger ps-1 ps-xxl-0 pe-1 pe-xxl-0">
                            Hoàn tiền 15%</div>
                        <div class="w-100 text-center border border-1 border-top-0 pb-4 pb-lg-3 ps-1 ps-xxl-0 pe-1 pe-xxl-0"
                             style="font-size: 12px;">Trên mỗi đồng bạn chi tiêu</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
    .left-ly .image-container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .left-ly img {
        width: 100%;
       
        max-width: 100%;
        transition: transform 0.3s ease-in-out;
    }

    .left-ly img:hover {
        transform: scale(1.05);
    }
</style>
