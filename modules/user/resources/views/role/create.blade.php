@extends('core::theme.layouts.default')
@section('page_content')
<form action="{{ route('role.admin.add') }}" method="post">
    {{ csrf_field() }}
    <div class="card-header border-bottom header-elements-inline">
        <h5 class="card-title">{{ trans('user::role.create_role') }}</h5>
        <div class="header-elements">
            <a href="{{ route('role.admin.list') }}" class="btn-sm btn btn-dark">{{ trans('core::button.cancel') }}</a>
            <button class="btn-sm btn btn-info ml-1">{{ trans('core::button.save') }}</button>
        </div>
    </div>
    <div class="card-body">
        <fieldset class="mt-3">
            <div class="form-group row">
                <label class="col-form-label col-lg-3"><strong>{{ trans('user::role.form.label_name') }}</strong> <sup class="text-danger">(∗)</sup><br><small class="text-danger">{!! trans('user::role.form.helpertext_name') !!}</small></label>
                <div class="col-lg-9">
                    <input placeholder="{{ trans('user::role.form.placeholder_name') }}" type="text" class="form-control" name="name" value="{{ old('name') }}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-lg-3"><strong>{{ trans('user::role.form.label_title') }}</strong> <sup class="text-danger">(∗)</sup></label>
                <div class="col-lg-9">
                    <input placeholder="{{ trans('user::role.form.placeholder_title') }}" id="txtTitle" type="text" class="form-control" name="title" value="{{ old('title') }}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-form-label col-lg-3"><strong>{{ trans('core::form.label_description') }}</strong></label>
                <div class="col-lg-9">
                    <input placeholder="{{ trans('core::form.placeholder_description') }}" type="text" class="form-control" name="description" value="{{ old('description') }}">
                </div>
            </div>
        </fieldset>
    </div>
    <h5 class="text-center">CHỌN QUYỀN HẠN</h5>
    <div class="card-body list_permissions">
        @foreach (get_list_permissions() as $mod)
        <div class="mb-0 rounded-0">
            <h6 class="card-title">
                <a data-toggle="collapse" class="text-default collapsed" href="#collapsible-{{ $mod['module'] }}" aria-expanded="true"><strong><i class="{{ $mod['icon'] }}"></i>&nbsp;&nbsp;{{ $mod['title'] }}</strong></a>
            </h6>
            <div id="collapsible-{{ $mod['module'] }}" class="collapse show">
                <div class="row">
                    @foreach ($mod['permissions'] as $permission)
                    <div class="col-md-3 mb-3">
                        <div class="form-check">
                            <label class="form-check-label item_permission">
                                <input name="permissions[]" value="{{ $permission['name'] }}" type="checkbox" class="form-check-input-styled">
                                <strong>{{ trans($permission['title']) }}</strong>
                                <br>
                                <em><small>{{ trans($permission['description']) }}</small></em>
                            </label>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <div class="card-body">
        <div class="text-center">
            <a href="{{ route('role.admin.list') }}" class="btn-sm btn btn-dark">{{ trans('core::button.cancel') }}</a>
            <button class="btn-sm btn btn-info">{{ trans('core::button.save') }}</button>
        </div>
    </div>
</form>
@endsection
@section('custom_js')
<script>
    $(document).ready(function(){
    var old_permissions = {!! json_encode(old('permissions', [])) !!};
        old_permissions.forEach(function(e){
            $('input[value="' + e + '"]').prop("checked", true);
            $('input[value="' + e + '"]').parent().parent().parent().addClass('selected');
        })
        $.uniform.update();
});
</script>
@endsection
