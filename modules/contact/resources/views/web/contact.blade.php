@extends('web::layouts.home')
@section('page_content')
    <!-- main container -->
    <section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="banner-contact"
        style="background-position: 50% 0px;">
        <div class="banner-text">
            <div class="center-text">
                <div class="container">
                    <h1>Liên Hệ</h1>
                    <strong class="subtitle"></strong>
                    <!-- breadcrumb -->
                    <nav class="breadcrumbs">
                        <ul>
                            <li><a href="#">Trang Chủ</a></li>
                            <li><span>Liên Hệ</span></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <main id="main">
        <!-- main contact information block -->
        <div class="content-block bg-white">
            <div class="container">
                <header class="content-heading">
                    <h2 class="main-heading">Liên Hệ</h2>
                    <strong class="main-subtitle">Để có thể đáp ứng được các yêu cầu và các ý kiến đóng góp của quí vị một
                        cách nhanh chóng xin vui lòng liên hệ.</strong>
                    <div class="seperator"></div>
                </header>
                <div class="contact-info row">

                </div>
                <div class="row">
                    <div class="col-md-12 wow fadeInLeft">
                        <!-- main contact form -->
                        <form class="contact-form has-border" id="contact_form" action="{{ route('web.contact') }}"
                            method="POST">
                            <fieldset>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="sender_name">Họ Tên</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <input type="text" class="form-control" id="sender_name" name="sender_name"
                                                required oninvalid="this.setCustomValidity('vui lòng nhập họ tên')" oninput="setCustomValidity('')"/>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="sender_email">Email</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <input type="text" class="form-control" id="sender_email" name="sender_email"
                                                required="" oninvalid="this.setCustomValidity('vui lòng nhập email')"
                                                oninput="setCustomValidity('')" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="sender_phone">Điện Thoại</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <input type="text" class="form-control" id="sender_phone" name="sender_phone"
                                                required oninvalid="this.setCustomValidity('vui lòng SDT')" oninput="setCustomValidity('')" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="sender_address">Địa Chỉ</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <input type="text" class="form-control" id="sender_address"
                                                name="sender_address" required oninvalid="this.setCustomValidity('vui nhap dia chi')" oninput="setCustomValidity('')"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="title">Tiêu đề</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <input type="text" class="form-control" id="title" name="title" required oninvalid="this.setCustomValidity('vui nhap tieu de')" oninput="setCustomValidity('')"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <strong class="form-title"><label for="sender_content">Nội dung</label></strong>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <textarea cols="30" rows="10" class="form-control" id="sender_content"
                                                name="sender_content" required oninvalid="this.setCustomValidity('vui nhap noi dung')" oninput="setCustomValidity('')"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group btn-holder">
                                    <div class="col-sm-4">&nbsp;</div>
                                    <div class="col-sm-8">
                                        <div class="input-wrap">
                                            <button type="submit" id="btn_sent" value="Gửi đi" onclick="myFunction()"
                                                class="btn btn-white">Gửi đi</button>
                                            {{-- <input type="button" onclick="myFunction()" value="Submit form"> --}}
                                            <p id="error_message"></p>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <!-- partner list -->

    </main>
@endsection

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.min.js"></script>

<script>
    function myFunction() {

        var title = document.getElementById('title').value
        var sender_email = document.getElementById('sender_email').value
        var sender_phone = document.getElementById('sender_phone').value
        var sender_address = document.getElementById('sender_address').value
        var sender_content = document.getElementById('sender_content').value
        var sender_name = document.getElementById('sender_name').value
        if (title === '' || sender_email === '' || sender_phone === '' || sender_address === '' || sender_content ===
            '' || sender_name === '') {
            
        } else {
            Swal.fire(
                'Đã gửi liên hệ!',
                'Mời bạn nhấp vào nút!',
                'success'
            )
        }

    }
</script>
