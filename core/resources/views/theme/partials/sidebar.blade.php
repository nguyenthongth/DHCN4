 <div class="sidebar-container">
     <div class="sidemenu-container navbar-collapse collapse fixed-menu">
         <div id="remove-scroll">
             <ul class="sidemenu page-header-fixed p-t-20" data-keep-expanded="false" data-auto-scroll="true"
                 data-slide-speed="200">
                 <li class="sidebar-toggler-wrapper hide">
                     <div class="sidebar-toggler">
                         <span></span>
                     </div>
                 </li>
                 <li class="sidebar-user-panel">
                     <div class="user-panel">
                         <div class="row">
                             <div class="sidebar-userpic">
                                 <img src="{{ asset('assets/admin2/img/avatar.png') }}" class="img-responsive" alt="">
                             </div>
                         </div>
                         <div class="profile-usertitle">
                             <div class="sidebar-userpic-name"> Quản lý </div>
                             {{-- <div class="profile-usertitle-job"> Manager </div> --}}
                         </div>
                     </div>
                 </li>
                 @foreach ($menus = dashboard_menu()->getAll() as $menu)
                     @if (isset($menu->children) && $menu->children->count() > 0)
                         <li class="nav-item @if ($menu->active) open @endif" id="{{ $menu->id }}">

                             <a href="{{ $menu->url }}" class="nav-link nav-toggle  @if ($menu->active) active @endif">
                                 <i class="{{ $menu->icon }}"></i>
                                 <span class="title">{{ trans($menu->name) }}</span>

                                 <span class="arrow @if ($menu->active) open @endif"></span>
                                 @filter(CORE_FILTER_APPEND_MENU_NAME, $menu->id)
                             </a>

                             <ul class="sub-menu">
                                 @foreach ($menu->children as $item)
                                     <li class="nav-item" id="{{ $item->id }}">
                                         <a href="{{ $item->url }}" class="nav-link @if ($item->active) active @endif">
                                             <i class="{{ $item->icon }}"></i>
                                             <span>{{ trans($item->name) }}</span>
                                             @filter(CORE_FILTER_APPEND_MENU_NAME, $item->id)
                                         </a>
                                     </li>
                                 @endforeach

                                 {{-- <li class="nav-item">
                                     <a href="{{ $menu->url }}" class="nav-link @if ($menu->active) active @endif ">
                                         <i class="{{ $menu->icon }}"></i>{{ trans($menu->name) }}</a>
                                 </li> --}}
                             </ul>
                         </li>

                     @else
                         <li class="nav-item">
                             <a href="{{ $menu->url }}" class="nav-link">
                                 <i class="{{ $menu->icon }}"></i>{{ trans($menu->name) }}</a>
                         </li>
                     @endif


                 @endforeach



                 {{-- <li class="nav-item">
                     <a href="#" class="nav-link">
                         <i class="fa fa-volume-up"></i> Dashboard </a>

                 </li>
                 <li class="nav-item start active">
                     <a href="#" class="nav-link nav-toggle">
                         <i class="material-icons">dashboard</i>
                         <span class="title">Dashboard</span>
                         <span class="selected"></span>
                         <span class="arrow open"></span>
                     </a>
                     <ul class="sub-menu">
                         <li class="nav-item active">
                             <a href="index.html" class="nav-link ">
                                 <span class="title">Dashboard 1</span>
                                 <span class="selected"></span>
                             </a>
                         </li>
                         <li class="nav-item ">
                             <a href="dashboard2.html" class="nav-link ">
                                 <span class="title">Dashboard 2</span>
                             </a>
                         </li>
                     </ul>
                 </li>

                 <li class="nav-item">
                     <a href="javascript:;" class="nav-link nav-toggle">
                         <i class="material-icons">slideshow</i>
                         <span class="title">Multi Level Menu</span>
                         <span class="arrow "></span>
                     </a>
                     <ul class="sub-menu">
                         <li class="nav-item">
                             <a href="javascript:;" class="nav-link nav-toggle">
                                 <i class="fa fa-university"></i> Item 1
                                 <span class="arrow"></span>
                             </a>
                             <ul class="sub-menu">
                                 <li class="nav-item">
                                     <a href="javascript:;" class="nav-link nav-toggle">
                                         <i class="fa fa-bell-o"></i> Arrow Toggle
                                         <span class="arrow "></span>
                                     </a>
                                     <ul class="sub-menu">
                                         <li class="nav-item">
                                             <a href="javascript:;" class="nav-link">
                                                 <i class="fa fa-calculator"></i> Sample Link 1</a>
                                         </li>
                                         <li class="nav-item">
                                             <a href="#" class="nav-link">
                                                 <i class="fa fa-clone"></i> Sample Link 2</a>
                                         </li>
                                         <li class="nav-item">
                                             <a href="#" class="nav-link">
                                                 <i class="fa fa-cogs"></i> Sample Link 3</a>
                                         </li>
                                     </ul>
                                 </li>
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-file-pdf-o"></i> Sample Link 1</a>
                                 </li>
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-rss"></i> Sample Link 2</a>
                                 </li>
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-hdd-o"></i> Sample Link 3</a>
                                 </li>
                             </ul>
                         </li>
                         <li class="nav-item">
                             <a href="javascript:;" class="nav-link nav-toggle">
                                 <i class="fa fa-gavel"></i> Arrow Toggle
                                 <span class="arrow"></span>
                             </a>
                             <ul class="sub-menu">
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-paper-plane"></i> Sample Link 1</a>
                                 </li>
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-power-off"></i> Sample Link 1</a>
                                 </li>
                                 <li class="nav-item">
                                     <a href="#" class="nav-link">
                                         <i class="fa fa-recycle"></i> Sample Link 1
                                     </a>
                                 </li>
                             </ul>
                         </li>

                     </ul>
                 </li> --}}
             </ul>
         </div>
     </div>
 </div>
