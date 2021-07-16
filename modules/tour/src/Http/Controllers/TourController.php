<?php

namespace Modules\Tour\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Modules\Tour\Models\Booking;
use Modules\Tour\Models\Location as ModelsLocation;
use Modules\Tour\Models\Tour;
use Modules\Tour\Models\TourContent;
use Modules\Tour\Repositories\Interfaces\TourInterface;

class TourController extends BaseController
{
    /**
     * TourController Constructor
     *
     * @param TourInterface $tourRepository
     */
    function __construct(
        TourInterface $tourRepository
    ) {
        $this->tourRepository = $tourRepository;
    }

    public function getList(Request $request)
    {
        $param = $request->all();
        $filterdata = Tour::filter($param);
        $data['tours'] = $filterdata->orderBy('id', 'desc')->paginate(10)->appends(request()->except('page'));
        $data['param'] = $param;

        return view('tour::admin.tour.list', $data);
    }
    /**
     * tra ve view danh tạo mới tour
     */
    public function create()
    
    {
        $data['locations'] = ModelsLocation::orderBy('title', "asc")->get(); // lay danh sach dia diem cac tinh cua Viet Nam
        // dd($data['locations']);
        return view('tour::admin.tour.create', $data);
    }
    /*** */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'tour_code' => 'required',
            'price' => 'required',
            'leave_from' => 'required',
            'total_date' => 'required',
            'contact_us' => 'required',
            'locaion_id' => 'required',
            'image_tour' => 'required'
        ], [
            'title.required' => 'Chưa nhập tiêu đề',
            'description.required' => 'Chưa nhập tiêu đề',
            'tour_code.required' => 'Chưa nhập tiêu đề',
            'price.required' => 'Chưa nhập tiêu đề',
            'leave_from.required' => 'Chưa nhập tiêu đề',
            'total_date.required' => 'Chưa nhập tiêu đề',
            'contact_us.required' => 'Chưa nhập tiêu đề',
            'locaion_id.required' => 'Chưa nhập tiêu đề',
            'image_tour.required' => 'Chưa nhập tiêu đề'
        ]);

        // dd($request->all());
        $tour = Tour::create([
            'title' => $request->title,
            'description' => $request->description,
            'tour_code' => $request->tour_code,
            'date_go' => $request->date_go,
            'price' => $request->price,
            'leave_from' => $request->leave_from,
            'total_date' => $request->total_date,
            'contact_us' => $request->contact_us,
            'locaion_id' => $request->locaion_id,
            'image_tour' => $request->image_tour,
            'status' => $request->status ?? 1,
        ]);

        $tour_content_new = $request->tour_content_programs;
        $tour_content_new['tour_id'] = $tour['id'];
        TourContent::create($tour_content_new);

        return redirect()->route('tour.admin.list')->with('flash_data', ['type' => 'success', 'message' => 'Đã thêm tour thành công']);
    }

    /**
     * 
     * Sua tour
     */

    public function edit($id)
    {
        $data['tour'] = Tour::find($id);
        $data['locations'] = ModelsLocation::get();
        return view('tour::admin.tour.edit', $data);
    }
    /**
     * Update Tour
     */
    public function update(Request $request, $id)
    {
        $tour = Tour::where('id', $id)->update([
            'title' => $request->title,
            'description' => $request->description,
            'tour_code' => $request->tour_code,
            'date_go' => $request->date_go,
            'price' => $request->price,
            'leave_from' => $request->leave_from,
            'total_date' => $request->total_date,
            'contact_us' => $request->contact_us,
            'locaion_id' => $request->locaion_id,
            'image_tour' => $request->image_tour,
            'status' => $request->status ?? 1,
        ]);

        $tour_content_new = $request->tour_content_programs;
        TourContent::where('tour_id', $id)->update($tour_content_new);

        return redirect()->route('tour.admin.list')->with('flash_data', ['type' => 'success', 'message' => 'Đã sửa tour thành công']);
    }


    public function delete($id)
    {
        $deleteContenTour = TourContent::where('tour_id', $id)->delete();
        $tourDelete = Tour::where('id', $id)->delete();

        return redirect()->route('tour.admin.list')->with('flash_data', ['type' => 'success', 'message' => 'Đã xoa tour thành công']);
    }
    public function location()
    {
        // dd()
        // dd(file_get_contents());
        $path = public_path('json/tinh-thanh.json');
        // dd($path);
        $file = cms_read_file_json($path);

        foreach ($file as $key => $value) {
            ModelsLocation::create([
                'title' => $value['name']
            ]);
        }
    }

    /**
     * danh sach tour
     */
    public function tour(Request $request)
    {
        // $param = $request->all();
        // $filterdata = Tour::where('status', 1)->filter($param);
        // $data['tours'] = $filterdata->orderBy('id', 'desc')->paginate(10)->appends(request()->except('page'));
        // $data['param'] = $param;
     
        return view('tour::admin.tour.list', $data);
    }

    /**
     * danh sach khach dat tour
     */
    public function booking(Request $request)
    {
        $param = $request->all();
        $filterdata = Booking::where('status', 1)->filter($param);
        $data['bookings'] = $filterdata->orderBy('id', 'desc')->paginate(10)->appends(request()->except('page'));
        $data['param'] = $param;
        return view('tour::admin.booking.list', $data);
    }

    /**
     * 
     * Sua dat tour
     */

    public function edit1($id)
    {
        $data['booking'] = booking::find($id);
        $data['locations'] = ModelsLocation::get();
        return view('tour::admin.booking.edit', $data);
    }
    /**
     * Update dat Tour
     */
    public function updateBooking(Request $request, $id)
    {
        $tour = Booking::where('id', $id)->update([
            'customer' => $request->customer,
            'address' => $request->address,
            'total_customer' => $request->total_customer,
            'email' => $request->email,
        ]);


        return redirect()->route('tour.admin.booking')->with('flash_data', ['type' => 'success', 'message' => 'Đã cập nhật đặt tour thành công']);
    }

    /**
     * huy khach
     */
    public function cancel($id)
    {
        $data['bookings'] = Booking::where('id', $id)->update([
            'status' => 0
        ]);
        return redirect()->route('tour.admin.booking')->with('flash_data', ['type' => 'success', 'message' => 'Đã xoá đặt tour thành công']);
    }
}