@extends('core::theme.layouts.default')
@section('page_content')
    <!-- start widget -->
    <div class="state-overview">
        <h1 style="color: rgba(45, 60, 134, 1); font-weight: 600; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; justify-content: flex-start;text-align: center;"> Chào Mừng Đến Với Hệ Thống <br> Quản Lý Avoka Travel</h1>
        <div class="row">
            
            <div class="col-xl-3 col-md-6 col-12">
                <div class="info-box bg-blue">
                    <span class="info-box-icon push-bottom"><i class="material-icons">style</i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Tour</span>
                        <span class="info-box-number">{{ $numTour }}</span>
                        <div class="progress">
                            <div class="progress-bar width-60"></div>
                        </div>
                        <span class="progress-description">

                            {{-- Tăng 60% trong 28 ngày --}}
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-xl-3 col-md-6 col-12">
                <div class="info-box bg-orange">
                    <span class="info-box-icon push-bottom"><i class="material-icons">card_travel</i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Đặt tour</span>
                        <span class="info-box-number">{{ $numBooking }}</span>
                        <div class="progress">
                            <div class="progress-bar width-40"></div>
                        </div>
                        <span class="progress-description">
                            {{-- Tăng 40% trong 28 ngày --}}
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-xl-3 col-md-6 col-12">
                <div class="info-box bg-purple">
                    <span class="info-box-icon push-bottom"><i class="material-icons">phone_in_talk</i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Liên hệ</span>
                        
                        <span class="info-box-number">{{ $numContact }}</span>
                        <div class="progress">
                            <div class="progress-bar width-80"></div>
                        </div>
                        <span class="progress-description">
                            {{-- Tăng 80% trong 28 ngày --}}
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-xl-3 col-md-6 col-12">
                <div class="info-box bg-success">
                    <span class="info-box-icon push-bottom"><i class="material-icons">monetization_on</i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Bài Viết</span>
                        <span class="info-box-number">{{ $numPost }}</span><span></span>
                        <div class="progress">
                            <div class="progress-bar width-60"></div>
                        </div>
                        <span class="progress-description">

                            {{-- Tăng 60% trong 28 ngày --}}
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
    </div>
    <!-- end widget -->

    <!--page view -->
    {{-- <div class="row">
     
        <div class="col-md-4 col-sm-12 col-12">
            <div class="card  card-box">
                <div class="card-head">
                    <header>Notifications</header>
                    <div class="tools">
                        <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                        <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                        <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                    </div>
                </div>
                <div class="card-body no-padding height-9">
                    <div class="row">
                        <div class="noti-information notification-menu">
                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto;">
                                <div class="notification-list mail-list not-list small-slimscroll-style"
                                    style="overflow: hidden; width: auto;">
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-primary"> <i
                                                class="fa fa-user-o"></i>
                                        </span> <span class="text-purple">Abhay Jani</span> Added you as friend
                                        <span class="notificationtime">
                                            <small>Just Now</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon blue-bgcolor"> <i
                                                class="fa fa-envelope-o"></i>
                                        </span> <span class="text-purple">John Doe</span> send you a mail
                                        <span class="notificationtime">
                                            <small>Just Now</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-success"> <i
                                                class="fa fa-check-square-o"></i>
                                        </span> Success Message
                                        <span class="notificationtime">
                                            <small> 2 Days Ago</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-warning"> <i
                                                class="fa fa-warning"></i>
                                        </span> <strong>Database Overloaded Warning!</strong>
                                        <span class="notificationtime">
                                            <small>1 Week Ago</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-primary"> <i
                                                class="fa fa-user-o"></i>
                                        </span> <span class="text-purple">Abhay Jani</span> Added you as friend
                                        <span class="notificationtime">
                                            <small>Just Now</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon blue-bgcolor"> <i
                                                class="fa fa-envelope-o"></i>
                                        </span> <span class="text-purple">John Doe</span> send you a mail
                                        <span class="notificationtime">
                                            <small>Just Now</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-success"> <i
                                                class="fa fa-check-square-o"></i>
                                        </span> Success Message
                                        <span class="notificationtime">
                                            <small> 2 Days Ago</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-warning"> <i
                                                class="fa fa-warning"></i>
                                        </span> <strong>Database Overloaded Warning!</strong>
                                        <span class="notificationtime">
                                            <small>1 Week Ago</small>
                                        </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail"> <span class="icon bg-danger"> <i
                                                class="fa fa-times"></i>
                                        </span> <strong>Server Error!</strong>
                                        <span class="notificationtime">
                                            <small>10 Days Ago</small>
                                        </span>
                                    </a>
                                </div>
                                <div class="slimScrollBar"
                                    style="background: rgb(158, 165, 171); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 114.173px;">
                                </div>
                                <div class="slimScrollRail"
                                    style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;">
                                </div>
                            </div>
                            <div class="full-width text-center p-t-10">
                                <button type="button" class="btn purple btn-outline btn-circle margin-0">View All</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div> --}}


@endsection
