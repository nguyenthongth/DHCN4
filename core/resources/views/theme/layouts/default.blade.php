<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->

<head>
    @include('core::theme.partials.head_link')
</head>
<!-- END HEAD -->

<body
    class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md chat-sidebar-open logo-dark header-dark dark-sidebar-color">
    <div class="page-wrapper">
        <!-- start header -->
        @include('core::theme.partials.header')
        <!-- end header -->
        <!-- start page container -->
        <div class="page-container">
            <!-- start sidebar menu -->
            @include('core::theme.partials.sidebar')
            <!-- end sidebar menu -->
            <!-- start page content -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="page-bar">
                        <div class="page-title-breadcrumb">
                            <ol class="breadcrumb page-breadcrumb pull-right">
                                {{ Breadcrumbs::render() }}
                            </ol>

                        </div>
                    </div>
                    <div class="card  card-box">
                        @yield('page_content')
                    </div>
                </div>
            </div>
            <!-- end page content -->

        </div>
        <!-- end page container -->
        <!-- start footer -->
        @include('core::theme.partials.footer')

        <!-- end footer -->
    </div>
    <!-- start js include path -->
    @include('core::theme.partials.foot_script')
    {{-- @include('core::theme.partials.footer') --}}
    @yield('custom_js')
    <!-- end js include path -->
</body>

</html>
