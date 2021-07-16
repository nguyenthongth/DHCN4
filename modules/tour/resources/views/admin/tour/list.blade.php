@extends('core::theme.layouts.default')
@section('page_content')
    <div class="page-header-content header-elements-md-inline">
        <div class="page-title d-flex">
            <h4><i class="far fa-newspaper mr-2"></i> <span class="font-weight-semibold">Tour</span> - Danh sách
            </h4>
            <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
        </div>
        <div class="header-elements ">
            <div class="d-flex justify-content-center">
                <a href="{{ route('tour.admin.create') }}" class="btn btn-primary btn-sm">Thêm tour mới</a>
            </div>
        </div>
    </div>
    <div class="card-header border-bottom mb-0 header-elements-inline p-0">
        <div class="text-center" style="margin-top: 20px!important;width: 100%;padding-left: 10px;padding-right: 10px;">
             <form action="#" method="GET">
                <div class="row">
                    <div class="col-12 col-md-3 mt-1">
                        <div class="form-group">
                            <input type="text" placeholder="Tìm kiếm" class="form-control"
                                name="title" value="{{ isset($param['title']) ? $param['title'] : '' }}">
                        </div>
                    </div>
                    
                    <div class="col-12 col-md-2 mt-1 mb-1">
                        <button type="submit" class="btn btn-info"><i class="fa fa-filter mr-2"></i></button>
                        <a href="{{ route('tour.admin.list') }}" class="btn btn-warning"><i
                                class="fa fa-trash-o"></i></a>
                    </div>
                </div>
            </form> 
        </div>
    </div>

    @if (isset($tours) && count($tours) > 0)

        {{-- thay  tìm class rồi thay vào =  class="table-scrollable" --}}
        <div class="table-scrollable">
            <table class="table">
                <thead>
                    <tr>
                        <th class="text-center">Mã Tour</th>
                        <th>Tiêu đề</th>
                        <th class="text-center">Địa điểm</th>
                        <th class="text-center">Liên hệ</th>
                        <th class="text-center">Thời gian</th>
                        <th class="text-center">Giá tour</th>
                        <th class="text-center">Trạng thái</th>
                        <th style="width:100px;">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($tours as $tour)
                        {{-- @dd($tour) --}}
                        <tr>
                            <td class="text-center">{{ $tour['tour_code'] }}</td>
                            <td>
                                <strong>{{ Str::limit($tour['title'], 40) }}</strong>
                            </td>
                            <td class="text-center">
                                <strong>{{ $tour->location['title'] }}</strong>
                            </td>
                            <td class="text-center">{{ $tour['contact_us'] }}</td>

                            <td class="text-center">{{ $tour['total_date'] }}</td>

                            <td class="text-center">{{ $tour['price'] }}</td>


                            <td class="text-center">
                                {{-- <span style="display:none;">{{ $tour['status'] }}</span> --}}
                                {{ $tour['status'] == 1 ? 'Đang hoạt động' : 'Tạm ngưng' }}
                            </td>

                            <td class="text-center">
                                <a href="{{ route('tour.admin.edit', $tour['id']) }}" 
                                    data-popup="tooltip" title="Sửa" class="btn btn-xs btn-warning"><i class="fa fa-edit"></i></a>

                                <a href="javascript:;" onclick="askToDelete(this);return false;"
                                    data-href="{{ route('tour.admin.delete', $tour['id']) }}" 
                                    data-popup="tooltip" title="Xóa" class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i></a>

                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

 @if ($tours->links('vendor.pagination.bootstrap-4'))
                    <div class="cms-paginate float-right mr-3">
                        {{ $tours->links('vendor.pagination.bootstrap-4') }}
                    </div>
                @endif
    @else
        <div class="card-body">
            <div class="alert alert-info">
                Chưa có dữ liệu
            </div>
        </div>
    @endif
@endsection
@section('custom_js')
    <script src="{{ asset('assets/admin/js/plugins/tables/datatables/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            var switches = Array.prototype.slice.call(document.querySelectorAll('.form-input-switchery'));
            switches.forEach(function(html) {
                var switchery = new Switchery(html, {
                    secondaryColor: '#d8201c'
                });
            });
            var inProcess = false;
            $(document).find('.form-input-switchery').each(function(i, html) {
                $(html).on('click', function(e) {
                    if (!inProcess) {
                        if (typeof $(this).attr('checked') !== typeof undefined) {
                            // 1 => 0
                            inProcess = true;
                            $.ajax({
                                type: 'post',
                                url: "{{ route('post.admin.status') }}",
                                data: {
                                    _token: _token,
                                    id: $(this).data('id'),
                                    status: 0
                                },
                                dataType: 'JSON',
                                success: function(res) {
                                    inProcess = false;
                                    if (res.status) {
                                        $(html).removeAttr('checked');
                                        app.showNotify(res.msg, 'success');
                                    } else {
                                        app.showNotify(res.msg, 'error');
                                        setTimeout(function() {
                                            var newEl = new Switchery(html, {
                                                secondaryColor: '#d8201c'
                                            });
                                            setSwitchery(newEl, true);
                                        }, 200);
                                    }
                                }
                            });
                        }
                        if (typeof $(this).attr('checked') === typeof undefined) {
                            // 0 => 1
                            inProcess = true;
                            $.ajax({
                                type: 'post',
                                url: "{{ route('post.admin.status') }}",
                                data: {
                                    _token: _token,
                                    id: $(this).data('id'),
                                    status: 1
                                },
                                dataType: 'JSON',
                                success: function(res) {
                                    inProcess = false;
                                    if (res.status) {
                                        $(html).attr('checked', 'checked');
                                        app.showNotify(res.msg, 'success');
                                    } else {
                                        app.showNotify(res.msg, 'error');
                                        setTimeout(function() {
                                            var newEl = new Switchery(html, {
                                                secondaryColor: '#d8201c'
                                            });
                                            setSwitchery(newEl, false);
                                        }, 200);
                                    }
                                }
                            });
                        }
                    } else {
                        e.preventDefault();
                    }
                });
            });
        });
    </script>
@endsection
