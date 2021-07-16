@extends('web::layouts.home')
@section('page_content')
    <!-- main banner -->
    <section class="banner banner-inner parallax" data-stellar-background-ratio="0.5" id="blog-single">
        <div class="banner-text">
            <div class="center-text">
                <div class="container">
                    <h1>{{ $post->category->title }}</h1>
                    <strong class="subtitle">{{ $post->category->description }}</strong>
                    <!-- breadcrumb -->
                    <nav class="breadcrumbs">
                        <ul>
                            <li><a href="{{ route('web.index') }}">HOME</a></li>
                            <li><a
                                    href="{{ route('web.post.categories', $post->category['slug']) }}">{{ $post->category->title }}</a>
                            </li>
                            <li class="active">{{ $post['title'] }}</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- main container -->
    <main id="main">
        <div class="content-with-sidebar common-spacing content-left">
            <div class="container">

                <div id="content">
                    <div class="blog-holder no-pagination">
                        <!-- blog single -->
                        <article class="blog-single">
                            {{-- <div class="img-wrap">
                      <img src="{{ asset('') }}" height="480" width="870" alt="image description" />
                    </div> --}}
                            <div class="description">
                                <h1 class="content-main-heading">
                                    {{ $post->title }}
                                </h1>
                                <span style="font-size: 20px;">{!! $post->content !!} </span>
                                <footer class="meta-article">
                                    <span class="star-rating">
                                        <span><span class="icon-star"></span></span>
                                        <span><span class="icon-star"></span></span>
                                        <span><span class="icon-star"></span></span>
                                        <span><span class="icon-star"></span></span>
                                        <span class="disable"><span class="icon-star"></span></span>
                                    </span>
                                    <div class="footer-sub">
                                        <div class="rate-info">
                                            Post <a href="#">{{ $post->author }}</a>
                                        </div>

                                    </div>

                                </footer>
                            </div>
                            <!-- comments -->
                            <!-- comemmts reply -->
                            <!-- comment form -->
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
