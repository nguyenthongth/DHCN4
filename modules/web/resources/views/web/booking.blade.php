@extends('web::layouts.home')
@section('page_content')
        <main id="main">
          <!-- top information area -->
          <div class="inner-top">
            <div class="container">
              <h1 class="inner-main-heading">Đặt tour</h1>
              <!-- breadcrumb -->
              <nav class="breadcrumbs">
                <ul>
                  <li><a href="#">Home</a></li>
                  <li><a href="#">pages</a></li>
                  <li><span>Đặt tour</span></li>
                </ul>
              </nav>
            </div>
          </div>
          <div class="inner-main common-spacing container">
            <!-- booking form -->
            <form class="booking-form" action="#" method="POST">
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
                            <input type="text" id="name" name="txt_name" class="form-control" />
                          </div>
                        </div>
                        
                      </div>
                      <div class="hold">
                        <label for="address">Địa Chỉ</label>
                        <input type="text" id="address" name="txt_diachi" class="form-control" />
                      </div>
                      <div class="hold">
                        <input type="hidden" id="address" name="tour_id" value="" class="form-control" />
                      </div>
                      <div class="hold">
                        <label for="city">Số Khách</label>
                        <input type="text" id="nr_people" name="txt_nr_people" class="form-control" />
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="hold">
                            <label for="em">Email</label>
                            <input type="email" id="em" name="txt_email" class="form-control" />
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="hold">
                            <label for="phn">Điện thoại</label>
                            <input type="text" id="phn" name="txt_dienthoai" class="form-control" />
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
                        <label for="txt" >Ghi chú của bạn</label>
                        <textarea
                          id="txt"
                          name="txt_ghichu"
                          class="form-control"
                          placeholder="Please enter any additional information here, eg. food/drug requirements etc."
                        ></textarea>
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
                              <td>
                                <span class="title"
                                  >Everest Trekking &emsp;<span class="amount"
                                    >x&emsp; 3</span
                                  ></span
                                >
                                <time datetime="2016-09-29"
                                  >Booking Date:&emsp; 14th Jan 2016</time
                                >
                              </td>
                              <td>
                                <span class="amount">$2,999</span>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <span class="title"
                                  >Bungee Jumping &emsp;<span class="amount"
                                    >x&emsp; 2</span
                                  ></span
                                >
                                <time datetime="2016-09-29"
                                  >Booking Date:&emsp; 14th Jan 2016</time
                                >
                              </td>
                              <td>
                                <span class="amount">$1,999</span>
                              </td>
                            </tr>
                          </tbody>
                          <tfoot>
                            <tr>
                              <td>Tổng giá</td>
                              <td>$4,988</td>
                            </tr>
                          </tfoot>
                        </table>
                        <button type="submit" class="btn btn-default">
                          Xác nhận đặt chỗ
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </main>
@endsection