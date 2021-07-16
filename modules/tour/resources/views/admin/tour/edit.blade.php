@extends('core::theme.layouts.default')
@section('page_header')

@endsection
@section('page_content')
    <div class="page-header-content header-elements-md-inline">
        <div class="page-title d-flex">
            <h4><i class="far fa-newspaper mr-2"></i> <span class="font-weight-semibold">Tour</span> - Danh sách
            </h4>
            <a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
        </div>
        {{-- <div class="header-elements ">
            <div class="d-flex justify-content-center">
                <a href=""></a>
                <a href="{{ route('tour.admin.create') }}" class="btn btn-primary btn-sm">Thêm tour mới</a>
            </div>
        </div> --}}
    </div>
    <form action="{{ route('tour.admin.edit', $tour['id']) }}" method="post">
        {{ csrf_field() }}
        {{-- @dd($tour) --}}
        <div class="row ml-0 mr-0">
            <div class="col-md-8 p-0" style="border-right: 1px solid #ddd">
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Tiêu đề tour</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Tiêu đề tour" name="title" value="{{ old('title', $tour['title']) }}"
                                type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Mã tour</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Mã tour" name="tour_code"
                                value="{{ old('tour_code', $tour['tour_code']) }}" readonly type="text"
                                class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Thời gian</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Thời gian" name="total_date"
                                value="{{ old('total_date', $tour['total_date']) }}" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Địa điểm khởi hành</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Địa điểm hành" name="leave_from"
                                value="{{ old('leave_from', $tour['leave_from']) }}" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Khởi hành</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Khởi hành" name="date_go" value="{{ old('date_go', $tour['date_go']) }}"
                                type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Hình ảnh</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <div class="input-group areaBrowserFile">
                                <input placeholder="Hình ảnh" readonly type="text" id="post-image" class="form-control"
                                    name="image_tour" value="{{ old('image_tour', $tour['image_tour']) }}">
                                <div class="input-group-prepend mr-0">
                                    <button class="btn btn-light btn-sm btn-remove-file text-danger" type="button"><i
                                            class="fa fa-times"></i></button>
                                    <button class="btn btn-dark btn-sm btn-choose-file" data-id="post-image"
                                        type="button"><i class="fa fa-image mr-1"></i>
                                        Hình ảnh</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Mô tả ngắn</strong></label>
                        <div class="col-lg-9">
                            <textarea placeholder="Mô tả ngắn" name="description" class="form-control"
                                rows="5">{{ old('description', $tour['description']) }}</textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-12 col-form-label">
                            <strong>Lịch trình</strong> <sup class="text-danger">(*)</sup>
                        </label>
                        <div class="col-lg-12">
                            <textarea id="content"
                                name="tour_content_programs[content]">{{ old('content', $tour->calendarTour['content']) }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 p-0">
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-lg-12 col-form-label"><strong>Địa điểm</strong></strong>
                            <sup class="text-danger">(*)</sup></label>
                        <div class="col-lg-12">
                            <select name="locaion_id" class="form-control">
                                <option value="">-- Chưa chọn--</option>
                                @if (isset($locations) && count($locations))
                                    @foreach ($locations as $location)
                                        <option value="{{ $location['id'] }}"
                                            {{ old('locaion_id', $tour['locaion_id']) == $location['id'] ? 'selected' : '' }}>
                                            {{ $location['title'] }}
                                        </option>
                                    @endforeach
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><strong>Giá tour / người lớn</strong></label>
                        <input name="price" type="text" class="form-control" placeholder="Giá tour"
                            value="{{ old('price', $tour['price']) }}">
                    </div>
                    <div class="form-group">
                        <label><strong>Liên hệ</strong></label>
                        <input name="contact_us" type="text" class="form-control" placeholder="Liên hệ"
                            value="{{ old('contact_us', $tour['contact_us']) }}">
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label"><strong>{{ trans('post::post.status') }}</strong> </label>
                        <div class="col-md-9">
                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <div class="uniform-choice">
                                        <div class="uniform-choice">
                                            <input name="status" type="radio" class="form-check-input-styled"
                                                {{ old('status', 1) == 1 ? 'checked' : '' }} value="1">
                                        </div>
                                    </div>
                                    <span class="text-success">{{ trans('post::post.activate') }}</span>
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <div class="uniform-choice">
                                        <div class="uniform-choice">
                                            <input name="status" type="radio" class="form-check-input-styled"
                                                {{ old('status', 1) == 0 ? 'checked' : '' }} value="0">
                                        </div>
                                    </div>
                                    <span class="text-danger">{{ trans('post::post.deactivate') }}</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="text-center mb-5">
                        <a href="{{ route('post.admin.index') }}"
                            class="btn btn-dark">{{ trans('post::post.cancel') }}</a>
                        <button type="submit" class="btn btn-primary">{{ trans('post::post.save') }}</button>
                    </div>
                </div>
            </div>
        </div>

    </form>
@endsection

@section('custom_js')
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace('content', {
            language: 'vi',
            height: 400,
            filebrowserBrowseUrl: '/file-manager/ckeditor'
        });
    </script>

@endsection
