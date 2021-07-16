@extends('web::layouts.home')
@section('page_content')
    <!-- main banner -->
    <section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="gridview-sidebar">
        <div class="banner-text">
            <div class="center-text">
                <div class="container">
                    <h1>Tour Trong Nước</h1>
                    <strong class="subtitle">Danh sách các tour du lịch của Avoka Travel</strong>
                    <!-- breadcrumb -->

                </div>
            </div>
        </div>
    </section>
    <!-- main container -->
    <main id="main">
        <!-- content with sidebar -->
        <div class="bg-gray content-with-sidebar grid-view-sidebar">
            <div class="container">
                <div id="two-columns" class="row">
                    <!-- sidebar -->
                    <aside id="sidebar" class="col-md-4 col-lg-3 sidebar sidebar-list">
                         <div class="card-header border-bottom mb-0 header-elements-inline p-0">
        {{-- <div class="text-center" style="margin-top: 20px!important;width: 100%;padding-left: 10px;padding-right: 10px;">
             <form action="#" method="GET">
                <div class="row">
                    <div class="col-12 col-md-10 mt-1">
                        <div class="form-group">
                            <input type="text" placeholder="Tìm kiếm" class="form-control"
                                name="title" value="{{ isset($param['title']) ? $param['title'] : '' }}">
                        </div>
                    </div>
                    
                    <div class="col-12 col-md-2 mt-1 mb-1">
                        <button type="submit" class="btn btn-info"><i class="fa fa-filter mr-2"></i></button>
                       
                    </div>
                </div>
            </form> 
        </div> --}}
    </div>
                        <div class="sidebar-holder">
                            <header class="heading">
                                <h3>BỘ LỌC</h3>
                            </header>
                            <div class="accordion">
                                <div class="accordion-group">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a role="button" data-toggle="collapse" href="#collapse1" aria-expanded="false"
                                                aria-controls="collapse1">CÁC ĐỊA DANH</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse" aria-expanded="false"
                                        role="tabpanel">
                                        <div class="panel-body">
                                            <ul class="side-list region-list hovered-list">
                                                {{-- lay danh sach tu location --}}
                                                @foreach ($locations as $item)
                                                    <li>
                                                        <a href="{{ route('web.tour.location', $item['id']) }}">
                                                            <span class="ico-holder">
                                                                <span class="icon-asia"></span>
                                                            </span>
                                                            <span class="text">{{ $item['title'] }}</span>
                                                        </a>
                                                    </li>
                                                @endforeach
                                                {{-- end --}}

                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </aside>
                    <div id="content" class="col-md-8 col-lg-9">

                        <div class="content-holder content-sub-holder">
                            <div class="row db-3-col">
                                @foreach ($tours as $tour)
                                    <article class="col-md-6 col-lg-4 article has-hover-s1 thumb-full">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <img src="{{ asset($tour['image_tour']) }}" height="228" width="350"
                                                    alt="{{ $tour['title'] }}" />
                                            </div>
                                            <h3 class="small-space">
                                                <a
                                                    href="{{ route('web.tour.detail', $tour['id']) }}">{{ $tour['title'] }}</a>
                                            </h3>
                                            <span class="info"></span>

                                            <p>
                                                {!! Str::limit($tour['description'], 75) !!}
                                            </p>
                                            <a href="{{ route('web.tour.detail', $tour['id']) }}"
                                                class="btn btn-default">xem thêm</a>
                                            <footer>
                                                <span class="price">Giá<span>{{ $tour['price'] }}</span></span>
                                            </footer>
                                        </div>
                                    </article>
                                @endforeach
                            </div>
                        </div>
                        <!-- pagination wrap -->
                        @if ($tours->links('vendor.pagination.bootstrap-4'))
                            <nav class="pagination-wrap">

                                <div class="cms-paginate float-right mr-3">
                                    {{ $tours->links('vendor.pagination.bootstrap-4') }}
                                </div>

                            </nav>
                        @endif
                          <!-- pagination wrap -->
                       
                    </div>
                </div>
            </div> 
        </div>
        <!-- recent block -->
    </main>
@endsection
