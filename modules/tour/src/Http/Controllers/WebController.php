<?php

namespace Modules\Tour\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Illuminate\Http\Request;
use Modules\Tour\Models\Booking;
use Modules\Tour\Models\Location;
use Modules\Tour\Models\Tour;
use Modules\Tour\Models\TourContent;

class WebController extends BaseController
{
    /**
     * Danhsach tour
     */
    public function listTour()
    {
        $data['tours'] = Tour::latest()->paginate(15);;
        $data['locations'] = Location::get();
        return view('tour::web.tours', $data);
    }
    public function tourLocation($idLoction)
    {
        $data['tours'] = Tour::where('locaion_id', $idLoction)->paginate(15);
        $data['locations'] = Location::get();
        return view('tour::web.tours', $data);
    }

    /**
     * chi tiet tuor
     */
    public function tour($id)
    {
        $data['tour'] = Tour::find($id);
        $data['tours'] = Tour::inRandomOrder()->limit(4)->get();

        return view('tour::web.tour-detail', $data);
    }
    /**
     * diua ve trang dat tuor
     */
    public function booking($id)
    {
        $data['tour'] = Tour::find($id);
        return view('tour::web.booking', $data);
    }
    /**
     * Dat tour
     */
    public function bookingStore(Request $request, $id)
    {
        // dd($request->all());
        $inser = $request->all();
        $inser['tour_id'] = $id;
        Booking::create($inser);
        $data['tour'] = Tour::find($id);
        return view('tour::web.booking', $data);
    }
}