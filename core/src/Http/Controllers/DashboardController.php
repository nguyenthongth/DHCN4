<?php

namespace Core\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Modules\Contact\Models\Contact;
use Modules\Post\Models\Post;
use Modules\Tour\Models\Booking;
use Modules\Tour\Models\Tour;

class DashboardController extends BaseController
{


    
    public function index()
    {
        $data['numPost'] = Post::count();
        $data['numTour'] = Tour::count();
        $data['numBooking'] = Booking::count();
        $data['numContact'] = Contact::count();
        return view('core::dashboard.index', $data);
        
    }

    

    public function getChangeLang($lang)
    {
        if ($lang != false) {
            session(['admin-locale' => $lang]);
        }
        return redirect()->back();
    }
    public function slug()
    {
        return response()->json(str_slug(request()->plainText));
    }
}
