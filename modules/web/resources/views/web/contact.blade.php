@extends('web::layouts.home')
@section('page_content')
 <!-- main container -->
<section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="banner-contact" style="background-position: 50% 0px;">
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
                <strong class="main-subtitle"
                  >Để có thể đáp ứng được các yêu cầu và các ý kiến đóng góp của quí vị một cách nhanh chóng xin vui lòng liên hệ.</strong
                >
                <div class="seperator"></div>
              </header>
              <div class="contact-info row">
                
              </div>
              <div class="row">
                <div class="col-md-12 wow fadeInLeft">
                  <!-- main contact form -->
                  <form
                    class="contact-form has-border"
                    id="contact_form"
                    action="#"
                  >
                    <fieldset>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="fname">Họ Tên</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="text"
                              class="form-control"
                              id="fname"
                              name="fname"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="lname">Email</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="text"
                              class="form-control"
                              id="lname"
                              name="lname"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="con_email">Điện Thoại</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="email"
                              class="form-control"
                              id="con_email"
                              name="con_email"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="con_phone">Địa Chỉ</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="text"
                              class="form-control"
                              id="con_phone"
                              name="con_phone"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="con_country">Tiêu đề</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="text"
                              class="form-control"
                              id="con_country"
                              name="con_country"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-4">
                          <strong class="form-title"
                            ><label for="con_message">Nội dung</label></strong
                          >
                        </div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <textarea
                              cols="30"
                              rows="10"
                              class="form-control"
                              id="con_message"
                              name="con_message"
                            ></textarea>
                          </div>
                        </div>
                      </div>
                      <div class="form-group btn-holder">
                        <div class="col-sm-4">&nbsp;</div>
                        <div class="col-sm-8">
                          <div class="input-wrap">
                            <input
                              type="submit"
                              id="btn_sent"
                              value="Gửi đi"
                              class="btn btn-white"
                            />
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