@extends('web::layouts.home')
@section('page_content')
    <main id="main">
        <!-- top information area -->
        <section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="gridview-sidebar">
            <div class="banner-text">
                <div class="center-text">
                    <div class="container">
                        <h1>Đặt Tour</h1>
                        <strong class="subtitle">Du Lịch Trong Nước</strong>
                        <!-- breadcrumb -->

                    </div>
                </div>
            </div>
        </section>
        <div class="inner-main common-spacing container">
            <!-- booking form -->
            <form class="booking-form" action="{{ route('web.tour.booking', $tour['id']) }}" method="POST">
                {{ csrf_field() }}
                <div class="row same-height">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-holder">
                                <h2 class="small-size">Thông tin thanh toán</h2>
                                <div class="wrap">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="hold">
                                                <label for="name">Họ Và Tên</label>
                                                <input type="text" id="customer" name="customer" class="form-control" required
                                                    oninvalid="this.setCustomValidity('vui lòng nhập họ tên')"
                                                    oninput="setCustomValidity('')" />
                                            </div>
                                        </div>

                                    </div>
                                    <div class="hold">
                                        <label for="address">Địa Chỉ</label>
                                        <input type="text" id="address" name="address" class="form-control" required
                                            oninvalid="this.setCustomValidity('vui lòng nhập địa chỉ')"
                                            oninput="setCustomValidity('')" />
                                    </div>

                                    <div class="hold">
                                        <label for="city">Số Khách</label>
                                        <input type="text" id="total_customer" name="total_customer" class="form-control" required
                                            oninvalid="this.setCustomValidity('vui lòng nhập số khách')"
                                            oninput="setCustomValidity('')" />
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="hold">
                                                <label for="em">Email</label>
                                                <input type="email" id="email" name="email" class="form-control" required
                                                    oninvalid="this.setCustomValidity('vui lòng nhập email')"
                                                    oninput="setCustomValidity('')" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="hold">
                                                <label for="phn">Điện thoại</label>
                                                <input type="text" id="phone" name="phone" class="form-control" required
                                                    oninvalid="this.setCustomValidity('vui lòng nhập số diện thoại ')"
                                                    oninput="setCustomValidity('')" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-holder">
                                <h2 class="small-size">Ghi chú bổ sung</h2>
                                <div class="wrap">
                                    <div class="hold">
                                        <label for="txt">Ghi chú của bạn</label>
                                        <textarea id="txt" id="note" name="note" class="form-control"
                                            placeholder="điền ý kiến vào đây" required
                                            oninvalid="this.setCustomValidity('vui lòng nhập ghi chú')"
                                            oninput="setCustomValidity('')"></textarea>
                                    </div>
                                </div>

                                <div class="order-block">
                                    <h2 class="small-size">Xem trước Đơn đặt hàng</h2>
                                    <div class="wrap">
                                        <table class="product-table">
                                            <thead>
                                                <tr>
                                                    <th>Chuyến tham quan đã chọn</th>
                                                    <th>Tổng giá</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td >
                                                        <span class="title">{{ $tour['title'] }}</span>

                                                    </td>
                                                    <td style="width: 30%">{{ $tour['price'] }}</td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td></td>
                                                    <td style="width: 30%">{{ $tour['price'] }}</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <button type="submit" class="btn btn-default" value="Gửi đi" onclick="myFunction()">
                                            Xác nhận đặt chỗ
                                        </button>
                                         <p id="error_message"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
    </main>
@endsection

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.min.js"></script>

<script>
    function myFunction() {
        // alert("hello")
        // var customer = document.getElementsByName('customer')[0].value
        // var address = document.getElementsByName('address')[0].value
        // var total_customer = document.getElementsByName('total_customer')[0].value
        // var email = document.getElementsByName('email')[0].value
        // var phone = document.getElementsByName('phone')[0].value
        // var note = document.getElementsByName('note')[0].value
        // if  (customer == '' ) {
        //        alert('nhay vo day coi')
        // } else {
        //     alert('not null')
        //     Swal.fire(
        //         'Đặt tour thanh công!',
        //         'Mời bạn nhấp vào nút!',
        //         'success'
        //     )  
        // }
        var customer = document.getElementsByName('customer')[0].value
        var address = document.getElementsByName('address')[0].value
        var total_customer = document.getElementsByName('total_customer')[0].value
        var email = document.getElementsByName('email')[0].value
        var phone = document.getElementsByName('phone')[0].value
        var note = document.getElementsByName('note')[0].value
        if(address == '' || customer == '' || total_customer== '' ||  email=='' || phone=='' || note=='' ){
            // alert('null nel')
        }else{
            // alert('not null')
             Swal.fire(
                'Đặt tour thanh công!',
                'Mời bạn nhấp vào nút!',
                'success'
            )  
        }
    }
</script>
