@extends('core::theme.layouts.default')
@section('page_content')
    <form action="{{route ('tour.admin.edit1' , $booking['id'])}}" method="post">
        {{ csrf_field() }}
        
        <div class="row ml-0 mr-0">
            <div class="col-md-8 p-0" style="border-right: 1px solid #ddd">
                <div class="card-body">
                     <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Khách hàng</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            {{-- @dd($booking['address']) --}}
                            <input placeholder="Khách hàng" name="customer"
                                type="text" class="form-control" value="{{ old('customer', $booking['customer']) }}">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Địa chỉ</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="Địa chỉ" name="address"
                                type="text" class="form-control" value="{{ old('address', $booking['address']) }}">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Số khách</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="số khách" name="total_customer"
                                type="text" class="form-control" value="{{ old('total_customer', $booking['total_customer']) }}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Email</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="email" name="email"
                                type="text" class="form-control" value="{{ old('email', $booking['email']) }}">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>SDT</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="phone" name="phone"
                                type="text" class="form-control" value="{{ old('phone', $booking['phone']) }}">
                        </div>
                    </div>
                     <div class="form-group row">
                        <label class="col-lg-3 col-form-label"><strong>Ghi chú</strong> <sup
                                class="text-danger">(*)</sup></label>
                        <div class="col-lg-9">
                            <input placeholder="note" name="note"
                                type="text" class="form-control" value="{{ old('phone', $booking['note']) }}">
                        </div>
                    </div>
                   
                </div>
                <hr>
                    <div class="text-center mb-5">
                        <a href="{{ route('tour.admin.booking') }}"
                            class="btn btn-dark">Hủy</a>    
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </div>
            </div>
        </div>
    </form>
@endsection 

