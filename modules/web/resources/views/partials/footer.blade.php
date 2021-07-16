{{-- <footer id="footer" class="footer">
    <div class="footer__info">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-4 col-lg-6">
                    <div class="row ">
                        <div class="col-xs-12 col-md-12 col-lg-3">
                            <div class="heading">
                                <h2>Liên hệ</h2>
                            </div>
                            <div class="footer__logo text-center">
                                <img src="{{ logo_src(setting('site_logo')) ?? ''  }}" alt="logo">
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-12 col-lg-9">
                            <h3 class="title">{{ setting('site_name')  }}</h3>
                            <ul class="footer__contact-list">
                                <li class="footer__contact-it mb-1">Địa chỉ: {{ setting('site_address') }}</li>
                                <li class="footer__contact-it mb-1">Điện thoại: <a href="{{ setting('site_phone') }}" title="{{ setting('site_phone') }}">{{ setting('site_phone') }}</a> </li>
                                <li class="footer__contact-it mb-1">Fax: {{ setting('site_fax') }}</li>
                                <li class="footer__contact-it mb-1">Email: <a href="{{ setting('site_email') }}" title="{{ setting('site_email') }}">{{ setting('site_email') }}</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-md-4 col-lg-3">
                    <div class="heading">
                        <h2>{{ trans('web::common.category') }}</h2>
                    </div>
                    @widgetGroup('FOOTER_LINK')
                </div>
                <div class="col-xs-12 col-md-4 col-lg-3">
                    <div class="heading">
                        <h2>{{ trans('web::common.link') }}</h2>
                    </div>
                    @widgetGroup('LINK')
                </div>
            </div>
        </div>
    </div>
    <div class="footer__copyright">
        <div class="container">
            <div class="footer__copyright-content">
                <p class="text-white  mb-0">Thiết kế bởi <a href="http://facebook.com/quoctuan.282" target="_blank" rel="noopener noreferrer">Trần Gia Group</a></p>
                <ul class="notification__content statisticl">
                    <li class="statisticl-item">
                        <div class="statisticl-item__info">
                            <span class="icon">
                                <img src="./assets/images/entypo_flash.png" alt="icon">
                            </span>
                            <p class="statisticl__text">Đang truy cập:</p>
                        </div>
                        <div class="statisticl-item__total">
                            <p class="statisticl__text ml-1">1</p>
                        </div>
                    </li>
                    <li class="statisticl-item">
                        <div class="statisticl-item__info">
                            <span class="icon mr-1">
                                <img src="./assets/images/bx_bx-bar-chart-alt-2.png" alt="icon">
                            </span>
                            <p class="statisticl__text">Tổng lượt truy cập:</p>
                        </div>
                        <div class="statisticl-item__total">
                            <p class="statisticl__text ml-1">425</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<a id="to-top"><i class="fas fa-arrow-up"></i></a> --}}

<footer id="footer">
    <div class="container">
        <!-- newsletter form -->
        <form action="https://html.waituk.com/entrada/php/subscribe.html" id="signup" method="post"
            class="newsletter-form">
            <fieldset>
                <div class="input-holder">
                    <input type="email" class="form-control" placeholder="Nhập email" name="subscriber_email"
                        id="subscriber_email" />
                    <input type="submit" value="Đăng Ký" />
                </div>
                <span class="info" id="subscribe_message">Các deal du lịch giảm giá đến 60% sẽ được gửi đến inbox của
                    bạn
                    Khi nhấp vào Đăng ký, bạn đồng ý với Các Điều Kiện & Điều Khoản và Chính Sách Bảo Mật của chúng
                    tôi</span>
            </fieldset>
        </form>
        <!-- footer links -->
        <div class="row footer-holder">
            <nav class="col-sm-4 col-lg-4 footer-nav">
                <h3>Về Thông nguyễn</h3>
                <ul class="slide">

                    <li><a href="{{ route('web.contact') }}">Liên hệ chúng tôi</a></li>

                </ul>
            </nav>
            <nav class="col-sm-4 col-lg-4 footer-nav">
                <h3>Đối Tác</h3>
                <ul class="slide">
                    <li><a href="#">Đối tác đăng nhập</a></li>
                    <li><a href="#">Đối tác liên kết</a></li>
                    <li><a href="#">Chương trình cho Đại lý</a></li>
                    <li><a href="#">Hợp tác cùng chúng tối</a></li>
                </ul>
            </nav>

            <nav class="col-sm-4 col-lg-4 footer-nav last">
                <h3>Liên Hệ</h3>
                <ul class="slide address-block">
                    <li class="wrap-text">
                        <span class="icon-tel"></span>
                        <a href="tel:0971773444">0971773444</a>
                    </li>
                    <li class="wrap-text">
                        <span class="icon-fax"></span>
                        <a href="tel:0375689031">0375689031</a>
                    </li>
                    <li class="wrap-text">
                        <span class="icon-email"></span>
                        <a href="#">nguyenthongth1906@gmail.com</a>
                    </li>
                    <li>
                        <span class="icon-home"></span>
                        <address>Số 07, Mai Xuân Thưởng, TP Nha Trang</address>
                    </li>
                </ul>
            </nav>
        </div>

    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <!-- copyright -->
                    <strong class="copyright"><i class="fa fa-copyright"></i> Design by <a href="#">Thong
                            Thong</a></strong>
                </div>
                <div class="col-lg-6">
                    <ul class="payment-option">
                       
                        <li>
                            <img src="{{ asset('assets/web/img/footer/mastercard.png') }}" height="20" width="33"
                                alt="master card" />
                        </li>
                        <li>
                            <img src="{{ asset('assets/web/img/footer/paypal.png') }}" height="20" width="72"
                                alt="paypal" />
                        </li>
                        <li>
                            <img src="{{ asset('assets/web/img/footer/maestro.png') }}" height="20" width="33"
                                alt="maestro" />
                        </li>
                        <li>
                            <img src="{{ asset('assets/web/img/footer/bank-transfer.png') }}" height="20" width="55"
                                alt="bank transfer" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
