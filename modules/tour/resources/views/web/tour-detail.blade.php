@extends('web::layouts.home')
@section('page_content')
    <main id="main">
        <!-- main tour information -->
        <section class="container-fluid trip-info">
            <div class="same-height two-columns row">
                <div class="height col-md-6">
                    <!-- top image slideshow -->
                    <div id="tour-slide">
                        <div class="slide">
                            <div class="bg-stretch">
                                <img src="{{ asset($tour['image_tour']) }}" alt="image descriprion" height="1104"
                                    width="966" />
                            </div>
                        </div>

                    </div>
                </div>
                <div class="height col-md-6 text-col">
                    <div class="holder">
                        <h1 class="medium-size">{{ $tour['title'] }}</h1>
                        {{-- <div class="price"> <strong>VNĐ {{ $tour['price'] }}</strong></div> --}}
                        <div class="description" style="font-size: large">
                            <p>
                                {{ $tour['description'] }}
                            </p>
                        </div>
                        <ul class="reviews-info">
                            <li style="font-size: large">
                                <div class="info-left">
                                    <strong class="title">Mã tour</strong>

                                </div>
                                <div class="info-right">
                                    <div class="star-rating">
                                        <p>{{ $tour['tour_code'] }}</p>
                                    </div>

                                </div>
                            </li>
                            <li style="font-size: large">
                                <div class="info-left">
                                    <strong class="title">Ngày đi</strong>

                                </div>
                                <div class="info-right">
                                    <p>{{ $tour['date_go'] }}</p>
                                </div>
                            </li>
                            <li style="font-size: large">
                                <div class="info-left">

                                    <strong class="value">Giá</strong>
                                </div>
                                <div class="info-right">

                                    <span class="value">{{ $tour['price'] }} </span>
                                </div>
                            </li>
                            <li style="font-size: large">
                                <div class="info-left">
                                    <strong class="title">Nơi đi</strong>
                                </div>
                                <div class="info-right">
                                    <p>{{ $tour['leave_from'] }}</p>
                                    <span class="value"></span>
                                </div>
                            </li>
                            <li style="font-size: large">
                                <div class="info-left">
                                    <strong class="title">Tổng số ngày</strong>

                                </div>
                                <div class="info-right">
                                    <span class="value">{{ $tour['total_date'] }}</span>
                                </div>
                            </li>
                        </ul>
                        <div class="btn-holder">
                            {{-- dan den trang lien he --}}
                            <a href="{{ route('web.tour.booking', $tour['id']) }}" class="btn btn-lg btn-info" style="font-weight: 600;">Đặt
                                ngay</a>

                        </div>

                    </div>
                </div>
            </div>
        </section>
        <div class="tab-container">
            <nav class="nav-wrap" id="sticky-tab">
                <div class="container">
                    <!-- nav tabs -->
                    <ul class="nav nav-tabs text-center" role="tablist">

                        <li role="presentation">
                            <a href="#tab01" aria-controls="tab01" role="tab" data-toggle="tab"
                                style="font-weight: 600;color: #fff !important">Chương Trình Tour</a>
                        </li>
                        <li role="presentation">
                            <a href="#tab03" aria-controls="tab03" role="tab" data-toggle="tab"
                                style="font-weight: 600;color: #fff !important">Ghi Chú</a>
                        </li>


                    </ul>
                </div>
            </nav>
            <!-- tab panes -->
            <div class="container tab-content trip-detail">
                <!-- overview tab content -->
                <div role="tabpanel" class="tab-pane active" id="tab01" style="font-size: large;">
                    <div class="row">
                        <ol class="detail-accordion">
                            {!! $tour->calendarTour['content'] !!}
                        </ol>

                    </div>
                </div>
                <!-- accomodation tab content -->
                <div role="tabpanel" class="tab-pane" id="tab03" style="font-size: large;">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="detail">
                                <div class="content">
                                    <div class="the-content desc">
                                        <p style="text-align: justify;"><strong>Giá vé dành cho trẻ em:</strong></p>
                                        <ul>
                                            <li style="text-align: justify;">Trẻ em dưới 02 tuổi: giá vé máy bay theo quy
                                                định của hãng hàng không; miễn giá tour. Cha, Mẹ hoặc người thân đi kèm tự
                                                lo các chi phí ăn, ngủ, tham quan (nếu có) cho bé.&nbsp;</li>
                                            <li style="text-align: justify;">Trẻ em từ 02 – dưới 05 tuổi: 100 % giá vé máy
                                                bay; miễn giá tour. Cha, Mẹ hoặc người thân đi kèm tự lo các chi phí ăn,
                                                ngủ, tham quan (nếu có) cho bé. Hai người lớn chỉ kèm 1 trẻ em dưới 5 tuổi,
                                                trẻ em thứ 2 trở lên phải mua ½ vé tour.</li>
                                            <li style="text-align: justify;">Trẻ em từ 05 – dưới 11 tuổi: 100 % giá vé máy
                                                bay; 50% giá tour. Bao gồm các dịch vụ ăn uống, ghế ngồi trên xe và ngủ
                                                chung với gia đình. Hai người lớn chỉ được kèm 1 trẻ em từ 5 đến dưới 11
                                                tuổi, trẻ em thứ 2 trở lên Cha Mẹ mua thêm 1 suất giường đơn</li>
                                            <li style="text-align: justify;">Từ 11 tuổi trở lên : 100% giá tour và tiêu
                                                chuẩn như người lớn.</li>
                                        </ul>
                                        <p style="text-align: justify;"><strong>Quy định thanh toán, hủy vé:</strong></p>
                                        <ul>
                                            <li style="text-align: justify;">Sau khi đăng ký, thanh toán ít nhất 50% tiền
                                                cọc và đóng hết 100% trước &nbsp;khởi hành 10 ngày.</li>
                                            <li style="text-align: justify;">Khi đến ngày thanh toán đủ 100% tổng giá trị
                                                tiền tour, nếu Quý khách không thanh toán đúng hạn và đúng số tiền được xem
                                                như Quý khách tự ý huỷ tour và mất hết số tiền đã đặt cọc giữ chỗ.</li>
                                            <li style="text-align: justify;">Vé Máy Bay / vé xe lửa / vé tàu cao tốc được
                                                xuất ngay sau khi quý khách đăng ký, thanh toán, xác nhận thông tin cá nhân
                                                (họ tên, ngày tháng năm sinh…) và có những điều kiện vé như sau: Không được
                                                đổi tên, hoàn vé, hủy vé, thay đổi ngày, thay đổi hành trình.</li>
                                            <li style="text-align: justify;">Ngay sau khi đặt cọc hoặc thanh toán hoặc trước
                                                15 ngày, nếu hủy mất 10% giá tour + 100% tiền vé máy bay.</li>
                                            <li style="text-align: justify;">Hủy từ 10 đến trước 8 ngày trước ngày khởi:
                                                chịu phí 50% giá tour + 100% tiền vé máy bay.</li>
                                            <li style="text-align: justify;">Hủy từ 8 đến 6 ngày trước ngày khởi hành: chịu
                                                phí 70% giá tour + 100% tiền vé máy bay.</li>
                                            <li style="text-align: justify;">Hủy từ 5 ngày &nbsp;trước ngày khởi hành: chịu
                                                phí 100% giá tour + 100% tiền vé máy bay.</li>
                                            <li style="text-align: justify;">Trường hợp quý khách đến trễ giờ khởi hành được
                                                tính là hủy 5 ngày trước ngày khởi hành.</li>
                                            <li style="text-align: justify;">Việc huỷ bỏ chuyến đi phải được thông báo trực
                                                tiếp với Công ty hoặc qua fax, email, tin nhắn và phải được Công ty xác
                                                nhận. Việc huỷ bỏ bằng điện thoại không được chấp nhận.</li>
                                            <li style="text-align: justify;">Do tính chất là đoàn ghép khách lẻ, Du Lịch
                                                Việt sẽ có trách nhiệm nhận khách đăng ký cho đủ đoàn (10 khách người lớn
                                                trở lên) thì đoàn sẽ khởi hành đúng lịch trình. Nếu số lượng đoàn dưới 10
                                                khách, công ty có trách nhiệm thông báo cho khách trước ngày khởi hành 3
                                                ngày và sẽ thỏa thuận lại ngày khởi hành mới hoặc hoàn trả toàn bộ số tiền
                                                đã đặt cọc tour.</li>
                                            <li style="text-align: justify;">Các ngày đặt cọc, thanh toán, huỷ và dời tour:
                                                không tính thứ 7, Chủ Nhật.</li>
                                            <li style="text-align: justify;">Trong những trường hợp bất khả kháng như: khủng
                                                bố, bạo động, thiên tai, lũ lụt… Tuỳ theo tình hình thực tế và sự thuận
                                                tiện, an toàn của khách hàng, công ty Du Lịch sẽ chủ động thông báo cho
                                                khách hàng sự thay đổi như sau: huỷ hoặc thay thế bằng một chương trình mới
                                                với chi phí tương đương chương trình tham quan trước đó. Trong trường hợp
                                                chương trình mới có phát sinh thì Khách hàng sẽ thanh toán khoản phát sinh
                                                này. Tuy nhiên, mỗi bên có trách nhiệm cố gắng tối đa, giúp đỡ bên bị thiệt
                                                hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất khả kháng.…</li>
                                            <li style="text-align: justify;">Đối với sự thay đổi lịch trình, giờ bay do lỗi
                                                của hãng hàng không, tàu hoả, tàu thuỷ, Du Lịch Việt sẽ không chịu trách
                                                nhiệm bất kỳ phát sinh nào do lỗi trên như: phát sinh bữa ăn, nhà hàng,
                                                khách sạn, phương tiện di chuyển, hướng dẫn viên, ….&nbsp;</li>
                                        </ul>
                                        <p><strong>ĐIỀU KIỆN BẢO LƯU TOUR DO ẢNH HƯỞNG CỦA DỊCH COVID&nbsp;</strong><br> 1.
                                            Khách hàng thuộc các điều kiện như sau:</p>
                                        <p>• Khách có tour đi đến Vùng đang có Dịch, đang bị phong tỏa cách ly hoặc giản
                                            cách xã hội.</p>
                                        <p>• Khách đang bị cách ly phong tỏa do khu vực khách lưu trú đang nằm trong vùng
                                            Dịch.</p>
                                        <p>• Khách là trường hợp F1, F2, F3,…đang được yêu cầu cách ly tại nhà hoặc có tiếp
                                            xúc qua người nghi nhiễm.&nbsp;<br> 2. Khách hàng, nếu thuộc trong các trường
                                            hợp nêu trên sẽ được Bảo lưu tour cụ thể như sau:</p>
                                        <p>• Bảo lưu trong thời gian 365 ngày kể từ ngày khách thông báo cho công ty. Lưu ý:
                                            Khách hàng phải cung cấp đầy đủ giấy tờ chứng minh đang thuộc các trường hợp
                                            trên bao gồm : chứng minh nhân dân , sổ hộ khẩu, giấy xác nhận của địa phương (
                                            nếu thuộc điều kiện 2,3)<br> 3.Trường hợp một số điểm tham quan trong chương
                                            trình nằm trong vùng dịch, Công ty sẽ thay đổi hành trinh, điểm tham quan hợp lý
                                            nhất.</p>
                                        <p style="text-align: justify;"><strong>Lưu ý :</strong></p>
                                        <ul>
                                            <li style="text-align: justify;">Khi đăng ký tour khách hàng bắt buộc phải gởi
                                                giấy tờ tùy thân cho đơn vị du lịch để vào tên xuất vé và mua bảo hiểm du
                                                lịch. Những giấy tờ cá nhân của khách hàng (CMND hoặc Passport) thuộc về
                                                trách nhiệm của khách hàng. Mọi vấn đề như hình ảnh, thông tin giấy tờ trong
                                                bản gốc bị mờ, không rõ ràng; Passport, CMND hết hạn,… không đúng quy định
                                                của pháp luật Việt Nam, Du Lịch Việt sẽ không chịu trách nhiệm và sẽ không
                                                hoàn trả bất cứ chi phí phát sinh nào.</li>
                                            <li style="text-align: justify;">Đối với khách Nước ngoài/Việt Kiều: Khi đi tour
                                                phải mang theo đầy đủ Passport (Hộ Chiếu), Visa Việt Nam bản chính còn hạn
                                                sử dụng làm thủ tục lên máy bay theo qui định hàng không. &nbsp;</li>
                                            <li style="text-align: justify;">Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo
                                                giấy khai sinh (bản chính hoặc sao y có thị thực còn hạn sử dụng) để
                                                &nbsp;làm thủ tục hàng không.&nbsp;</li>
                                            <li style="text-align: justify;">Quý khách từ 14 tuổi bắt buộc phải có CMND hoặc
                                                Passport (còn hạn sử dụng), KHÔNG SỬ DỤNG GIẤY KHAI SINH. Nếu Quý khách từ
                                                14 tuổi chưa có CMND hoặc Passport bắt buộc phải có Giấy xác nhận nhân thân
                                                (Có xác nhận chính quyền (còn hạn sử dụng)) + Giấy khai sinh.&nbsp;</li>
                                            <li style="text-align: justify;">Một số thứ tự, chi tiết trong chương trình; giờ
                                                bay; giờ xe lửa; giờ tàu cao tốc có thể thay đổi để phù hợp với tình hình
                                                thực tế của chuyến đi (thời tiết, giao thông…)</li>
                                            <li style="text-align: justify;">Qui định nhận &amp; trả phòng tại các khách
                                                sạn/resort: nhận phòng sau 14H00 và trả phòng trước 12H00 .</li>
                                            <li style="text-align: justify;">Hành lý và tư trang du khách tự bảo quản trong
                                                quá trình du lịch .</li>
                                            <li style="text-align: justify;">Vì lý do sức khỏe và an toàn vệ sinh thực phẩm,
                                                Quý Khách vui lòng không mang thực phẩm từ bên ngoài vào nhà hàng, khách
                                                sạn. Đối với thức uống khi mang vào phải có sự đồng ý của nhà hàng, khách
                                                sạn và bị tính phí nếu có.</li>
                                        </ul>
                                        <p style="text-align: center;"><strong>KÍNH CHÚC QUÝ KHÁCH CHUYẾN ĐI THÚ VỊ VÀ BỔ
                                                ÍCH !</strong><br> &nbsp;</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <aside class="recent-block recent-list recent-wide-thumbnail">
                <div class="container">
                    <h2 class="text-center text-uppercase">Tour tương tự</h2>
                    <div class="row">
                        @foreach ($tours as $item)
                            <article class="col-sm-6 col-md-3 article">
                                <div class="thumbnail">
                                    <h3 class="no-space">
                                        <a href="{{ route('web.tour.detail', $item['id']) }}">{{ $item['title'] }}</a>
                                    </h3>
                                    <strong class="info-title">Nha Trang</strong>
                                    <div class="img-wrap">
                                        <img src="{{ asset($item['image_tour']) }}" height="210" width="250"
                                            alt="image description" />
                                    </div>
                                    <footer>
                                        <div class="sub-info">
                                            {{ $item['total_date'] }}
                                        </div>
                                        <ul class="ico-list">
                                            <li class="pop-opener">
                                                <a href="{{ route('web.tour.detail', $item['id']) }}">
                                                    <span class="icon-hiking"></span>

                                                </a>
                                            </li>
                                            <li class="pop-opener">
                                                <a href="{{ route('web.tour.detail', $item['id']) }}">
                                                    <span class="icon-mountain"></span>

                                                </a>
                                            </li>
                                            <li class="pop-opener">
                                                <a href="{{ route('web.tour.detail', $item['id']) }}">
                                                    <span class="icon-level5"></span>

                                                </a>
                                            </li>
                                        </ul>
                                    </footer>
                                </div>
                            </article>

                        @endforeach

                    </div>
                </div>
            </aside>
    </main>
@endsection
