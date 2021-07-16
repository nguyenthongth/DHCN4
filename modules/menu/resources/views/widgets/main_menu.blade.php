<style>
    .nav-link {
        display: flex;
        align-items: center;
        height: 100%;
    }

</style>



<nav class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle nav-opener" data-toggle="collapse" data-target="#nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!-- main menu items and drop for mobile -->
    <div class="collapse navbar-collapse" id="nav">
        <!-- main navbar -->
        <ul class="nav navbar-nav nav-center" style="font-weight: 600;font-size:17px;">
            <li><a href="{{ route('web.index') }}">Trang chủ</a></li>

            @foreach ($parents as $parent)
                <li cclass="dropdown">
                    <a id="navbarDropdownMenuLink"
                        href="{{ strstr($parent['link'], 'http://') || strstr($parent['link'], 'https://') ? $parent['link'] : URL::to($parent['link']) }}"
                        {{ $parent->children()->count() > 0 ? 'data-toggle=dropdown aria-haspopup=true aria-expanded=false' : '' }}
                        class="nav-link {{ $parent->children()->count() > 0 ? 'dropdown-toggle' : '' }} text-uppercase">{{ $parent['title'] }}</a>
                    @if ($parent->children()->count())
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            @foreach ($parent->children as $child)
                                <a class="dropdown-item"
                                    href="{{ strstr($child['link'], 'http://') || strstr($child['link'], 'https://') ? $child['link'] : URL::to($child['link']) }}">
                                    {{ $child['target'] ? 'target=' . $child['target'] : '' }}
                                    {{ $child['title'] }}</a>
                            @endforeach
                        </div>
                    @endif
                </li>
            @endforeach
        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li class="visible-xs visible-sm">
                <a href="{{ route('user.login') }}">
                    <span class="icon icon-user"></span>
                    <span class="text">Login</span>
                </a>
            </li>
            <li class="hidden-xs hidden-sm">
                <a href="{{ route('user.login') }}">
                    <span class="icon icon-user"></span>
                </a>
            </li>

        </ul>
    </div>
</nav>
<script>
    $(document).ready(function() {
        var url = window.location.href;
        $('.navbar-menu').find('a[href="' + url + '"]').each((i, e) => {
            if ($(e).parent().hasClass('dropdown-menu')) {
                $('.navbar-menu').find('.active').each((i, e) => {
                    $(e).removeClass('active');
                });
                $(e).parent().parent().addClass("active");
                $(e).parent().find("a").css("background-color", "#e9ecef");
            } else {
                $('.navbar-menu').find('.active').each((i, e) => {
                    $(e).removeClass('active');
                });
                $(e).parent().addClass("active");
            }
        });
    });
</script>
