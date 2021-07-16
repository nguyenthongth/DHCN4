@extends('web::layouts.home')
@section('custom_css')
@endsection
@section('page_content')
    <div class="banner banner-home">
        <!-- revolution slider starts -->
        @widgetGroup('SLIDE_HOME')
    </div>
    <div class="feature-block">
        {{-- <div class="holder">
            <ul>
                <li>
                    <a href="#">
                        <span class="ico">
                            <span class="icon-wildlife"></span>
                        </span>
                        <span class="info">TOUR XUYÊN VIỆT</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="ico">
                            <span class="icon-peak-climbing"></span>
                        </span>
                        <span class="info">TOUR TRONG NƯỚC</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="ico">
                            <span class="icon-mountain-biking"></span>
                        </span>
                        <span class="info">TOUR NƯỚC NGOÀI</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('web.search') }}">
                        <span class="ico">
                            <span class="icon-scuba-diving"></span>
                        </span>
                        <span class="info">TÌM KIẾM</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="ico">
                            <span class="icon-hunting"></span>
                        </span>
                        <span class="info">DỊCH VỤ</span>
                    </a>
                </li>

            </ul>
        </div> --}}
    </div>
    </div>
    <!-- main container -->
    <main id="main">
        <section class="content-block bg-white">
            <div class="container">
                <header class="content-heading">
                    <h2 class="main-heading">DU LỊCH TRONG NƯỚC</h2>
                    <span class="main-subtitle">Các địa điểm nổi bật để bạn sẵn sàng du lịch trong nước</span>
                    <div class="seperator"></div>
                </header>
                <div class="adventure-holder gallery-home-holder">
                    <div class="row">
                        <div class="col-md-6 img-block">
                            <!-- gallery list -->
                            <ul class="gallery-list gallery-with-icon">
                                <li>
                                    <a href="{{ route('web.tour.location', 55) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-01.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-bird"></span>
                                        <span class="info">Nha Trang</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 52) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-02.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-peak"></span>
                                        <span class="info">Đà Lạt </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location',  46) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-03.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-water"></span>
                                        <span class="info">Cần Thơ</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 8) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-04.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-asia"></span>
                                        <span class="info">Hà Nội</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 36) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-05.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-arctic"></span>
                                        <span class="info">Phú Quốc</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 57) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-06.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-africa"></span>
                                        <span class="info">Huế</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 62) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-07.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-plant"></span>
                                        <span class="info">Đà Nẵng</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 47 ) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-08.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-wildlife"></span>
                                        <span class="info">Hạ Long</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.tour.location', 54) }}" class="thumbnail">
                                        <img src="{{ asset('assets/web/img/gallery/img-09.jpg') }}" height="165"
                                            width="170" alt="image description" />
                                        <span class="hover icon-diamond"></span>
                                        <span class="info">Phan Thiết</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 text-block">
                            <div class="centered">
                                <h2 class="intro-heading">Du Lịch Trong Nước</h2>
                                <p class="intro">
                                    Du lịch trong nước luôn là lựa chọn tuyệt vời. Đường bờ biển dài hơn 3260km, những khu
                                    bảo tồn thiên nhiên tuyệt vời, những thành phố nhộn nhịp, những di tích lịch sử hào
                                    hùng, nền văn hóa độc đáo và hấp dẫn, cùng một danh sách dài những món ăn ngon nhất thế
                                    giới, Việt Nam có tất cả những điều đó. Với lịch trình dày, khởi hành đúng thời gian cam
                                    kết, Vietravel là công ty lữ hành uy tín nhất hiện nay tại Việt Nam, luôn sẵn sàng phục
                                    vụ du khách mọi lúc, mọi nơi, đảm bảo tính chuyên nghiệp và chất lượng dịch vụ tốt nhất
                                    thị trường

                                </p>
                                {{-- danh sach cac tour --}}
                                <a href="{{ route('web.tour.list') }}"
                                    class="btn btn-info-sub btn-md btn-shadow radius">Xem Thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- special block -->

        <!-- article list holder -->
        <div class="content-block content-spacing">
            <div class="container">
                <header class="content-heading">
                    <h2 class="main-heading">Nha Trang có gì?</h2>
                    <span class="main-subtitle">Khám phá trải nghiệm du lịch nha trang</span>
                    <div class="seperator"></div>
                </header>
                <div class="content-holder">
                    <div class="row db-3-col">
                        @foreach ($tourNhaTrang as $item)
                            <article class="col-sm-6 col-md-4 article has-hover-s3">
                                <div class="img-wrap">
                                    <a href="{{ route('web.tour.detail', $item['id']) }}">
                                        <img src="{{ asset($item['image_tour']) }}" height="215" width="370"
                                            alt="image description" />
                                    </a>
                                    <div class="hover-article">

                                        <div class="icons">
                                            <a href="{{ route('web.tour.detail', $item['id']) }}"><span
                                                    class="icon-heart"></span></a>
                                            <a href="{{ route('web.tour.detail', $item['id']) }}"><span
                                                    class="icon-reply"></span></a>
                                        </div>
                                        <div class="info-footer">
                                            {{-- <span class="price">from <span>$2749</span></span> --}}
                                            <a href="{{ route('web.tour.detail', $item['id']) }}" class="link-more">Xem
                                                Thêm</a>
                                        </div>
                                    </div>
                                </div>
                                <h3><a href="{{ route('web.tour.detail', $item['id']) }}">
                                        {{ $item['title'] }}
                                    </a>
                                </h3>
                                <p>
                                    {{ Str::limit($item['description'], 200) }}
                                </p>
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <!-- couter block -->

        <!-- featured adventure content -->
        <div class="featured-content adventure-holder">

            <div class="container-fluid">
                @foreach ($posts as $key => $post)
                    @if ($key == 0)
                        <div class="row same-height">
                            <div class="col-md-6 image height">
                                <div class="bg-stretch">
                                    <img src="{{ asset($post['image']) }}" height="627" width="960"
                                        alt="image description" />
                                </div>
                            </div>
                            <div class="col-md-6 text-block height">
                                <div class="centered">
                                    <h2 class="intro-heading">
                                        {{ $post['title'] }}
                                    </h2>
                                    <p class="intro">
                                        {{ $post['description'] }}
                                    </p>
                                    <a href="{{ route('web.post.post', $post['slug']) }}"
                                        class="btn btn-primary btn-lg">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="row same-height">

                            <div class="col-md-6 image height">
                                <div class="bg-stretch">
                                    <img src="{{ asset($post['image']) }}" height="627" width="960"
                                        alt="image description" />
                                </div>
                            </div>
                            <div class="col-md-6 text-block height">
                                <div class="centered">
                                    <h2 class="intro-heading">
                                        {{ $post['title'] }}
                                    </h2>
                                    <p class="intro">
                                        {{ $post['description'] }}
                                    </p>
                                    <a href="{{ route('web.post.post', $post['slug']) }}"
                                        class="btn btn-primary btn-lg">Xem Thêm</a>
                                </div>
                            </div>
                        </div>
                    @endif

                @endforeach



            </div>
        </div>
        <!-- browse block -->
        <!-- testimonial block -->
        <div class="testimonial-holder parallax" data-stellar-background-ratio="0.25" id="testimonial-home-page">
            <div class="container">
                <div id="testimonial-home-slide">
                    <div class="slide">
                        <blockquote class="testimonial-quote">
                            <div class="img">
                                <img src="{{ asset('assets/web/img/thumbs/img-03.jpg') }}" height="112" width="112"
                                    alt="image description" />
                            </div>
                            <div class="text">
                                <cite>Viet Trinh</cite>
                                <q>Đến Lang Biang cách đây 4 năm nhưng chỉ đi bộ được 1 phần đường lên đỉnh rồi về lần này
                                    quay lại quyết tâm trải nghiệm lên đỉnh 1 lần, cảnh tương đối ổn, hôm mình đi trời âm u
                                    nên không được đẹp lắm bản thân mình thấy 50k (vé vào cổng), 100k (đi xe lên đỉnh) hơi
                                    mắc, may mà có mua trên entrada cũng vớt vát lại được đôi chút nếu lần đầu đến ĐL thì
                                    nên thử khu này</q>
                            </div>
                        </blockquote>
                    </div>

                </div>
            </div>
        </div>

    </main>
@endsection
