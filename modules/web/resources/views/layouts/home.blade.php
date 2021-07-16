<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@yield('title')</title>
    @include('web::partials.head_style')
</head>


<body>
    {{-- <div class="preloader" id="pageLoad">
      <div class="holder">
        <div class="coffee_cup"></div>
      </div>
    </div> --}}
    <!-- main wrapper -->
    <div id="wrapper">
        <div class="page-wrapper">
            <!-- main header -->
            @include('web::partials.header')

        

            <!-- main index -->
            @yield('page_content')
        </div>
        <!-- main footer -->
        @include('web::partials.footer')
    </div>
    <!-- scroll to top -->
    <div class="scroll-holder text-center">
        <a href="javascript:" id="scroll-to-top"><i class="icon-arrow-down"></i></a>
    </div>

    @include('web::partials.foot_script')

   

</body>

</html>


</html>
