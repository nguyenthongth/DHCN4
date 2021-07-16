@if (count($breadcrumbs))
    @foreach ($breadcrumbs as $breadcrumb)
        @if ($breadcrumb->url && !$loop->last)
            <a href="{{ $breadcrumb->url }}" class="breadcrumb-item">{!! $breadcrumb->title !!}</a>
        @else
            <span class="breadcrumb-item active">{!! $breadcrumb->title !!}</span>
        @endif
    @endforeach
@endif


{{-- <div class=" pull-left">
                                <div class="page-title">Dashboard</div>
                            </div>
                            <ol class="breadcrumb page-breadcrumb pull-right">
                                <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                        href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                </li>
                                <li class="active">Dashboard</li>
                            </ol> --}}
