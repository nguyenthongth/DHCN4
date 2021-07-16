 <meta charset="utf-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta content="width=device-width, initial-scale=1" name="viewport" />
 <meta name="description" content="Responsive Admin Template" />
 <meta name="author" content="SmartUniversity" />
 <title>Trang quản lý</title>
 <!-- google font -->
 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
 <!-- icons -->
 <link href="{{ asset('assets/admin2/plugins/simple-line-icons/simple-line-icons.min.css') }}" rel="stylesheet"
     type="text/css" />
 <link href="{{ asset('assets/admin2/plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet"
     type="text/css" />
 <!--bootstrap -->
 <link href="{{ asset('assets/admin2/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
 <link href="{{ asset('assets/admin2/plugins/summernote/summernote.css') }}" rel="stylesheet" type="text/css">
 <!-- morris chart -->
 <link href="{{ asset('assets/admin2/plugins/morris/morris.css') }}" rel="stylesheet" type="text/css" />
 <!-- Material Design Lite CSS -->
 <link href="{{ asset('assets/admin2/plugins/material/material.min.css') }}" rel="stylesheet" type="text/css">
 <link href="{{ asset('assets/admin2/css/material_style.css') }}" rel="stylesheet" type="text/css">
 <!-- animation -->
 <link href="{{ asset('assets/admin2/css/pages/animate_page.css') }}" rel="stylesheet" type="text/css">
 <!-- Template Styles -->
 <link href="{{ asset('assets/admin2/css/plugins.min.css') }}" rel="stylesheet" type="text/css" />
 <link href="{{ asset('assets/admin2/css/style.css') }}" rel="stylesheet" type="text/css" />
 <link href="{{ asset('assets/admin2/css/responsive.css') }}" rel="stylesheet" type="text/css" />
 <link href="{{ asset('assets/admin2/css/theme-color.css') }}" rel="stylesheet" type="text/css" />


 <link href="{{ asset('assets/admin/css/noty.min.css') }}" rel="stylesheet" type="text/css">
 <link href="{{ asset('assets/admin/css/dev.custom.css') }}" rel="stylesheet" type="text/css">

 <script src="{{ asset('assets/admin/js/main/jquery.min.js') }}"></script>

 <script>
     var _token = '{{ csrf_token() }}';
     var app_url = '{{ config('app.url') }}';
 </script>
