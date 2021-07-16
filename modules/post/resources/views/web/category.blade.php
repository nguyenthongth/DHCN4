@extends('web::layouts.home')
@section('page_content')
    <section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="blog-fullwidth">
        <div class="banner-text">
            <div class="center-text">
                <div class="container">
                    <h1>{{ $category->title }}</h1>
                    <strong class="subtitle">Tin tức Du lịch - Tin tức Du lịch 2021 cung cấp các thông tin Du lịch Việt Nam,
                        Thông tin Du lịch Thế Giới, các Sự kiện Du lịch diễn ra trong ngày. Thông qua các bài viết được cập
                        nhật liên tục, du khách có thể nắm bắt thêm được nhiều thông tin hữu ích về du lịch.</strong>
                    <!-- breadcrumb -->
                    <nav class="breadcrumbs">
                        <ul>
                            <li><a href="#">TRANG CHỦ</a></li>
                            <li><span>TIN TỨC</span></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <!-- main container -->
    <main id="main">

        <div class="common-spacing blog-full-width">
            <div class="container">
                <div>
                    <div>
                        <div class="blog-holder">
                            <!-- blog list -->
                            <div class="blog-list row db-3-col">
                                @foreach ($posts as $post)
                                    {{-- @dd($post) --}}
                                    <article class="article blog-article col-sm-6 col-md-4 article has-hover-s3  ">
                                        <div class="img-wrap">

                                            <a href="#"><img src="{{ asset($post['image']) }}" height="480" width="870"
                                                    alt="image description"></a>
                                        </div>
                                        <div class="description" style="font-size: initial;">
                                            <header class="heading" style="font-size: large;">
                                                <h3><a
                                                        href="{{ route('web.post.post', $post->slug) }}">{{ $post->title }}</a>
                                                </h3>
                                                
                                            </header>
                                           
                                            <p>{{ Str::limit($post->description, 155) }}</p>
                                            <footer class="meta">

                                                <div class="rate-info">
                                                    by <a href="#">{{ $post->author }}</a>
                                                      &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                                                      <time class="info-day" datetime="2011-01-12">{{$post->created_at}}</time>  
                                                </div>

                                            </footer>
                                            <div class="link-view" style="font-size: initial;">
                                                <a href="{{ route('web.post.post', $post->slug) }}">Xem thêm</a>
                                            </div>
                                        </div>
                                    </article>
                                @endforeach
                            </div>
                        </div>
                        <!-- pagination wrap -->
                        @if ($posts->links('vendor.pagination.bootstrap-4'))
                                <nav class="pagination-wrap">

                                    <div class="cms-paginate float-right mr-3">
                                        {{ $posts->links('vendor.pagination.bootstrap-4') }}
                                    </div>

                                </nav>
                            @endif
                        <!-- pagination wrap -->
                    </div>
                </div>
            </div>
        </div>

    </main>
@endsection
