<?php

namespace Modules\Web\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use File;
use Modules\Post\Models\Post;
use Modules\Tour\Models\Tour;

class WebController extends BaseController
{
    public static function index()
    {
        page_title()->setTitle('Trang chủ');
        // tour nha trang
        $data['tourNhaTrang'] = Tour::where('locaion_id', 55)->inRandomOrder()->limit(6)->get();
        //end 

        // bai viet 
        $data['posts'] = Post::inRandomOrder()->limit(2)->get();
        //
        return view('web::web.index', $data);
    }

    // public static function test()
    // {
    //     page_title()->setTitle('Trang chủ');
    //     $images = File::allFiles(public_path('/upload/image-gallery'));
    //     $videos = File::allFiles(public_path('/upload/video-gallery'));
    //     return view('web::web.test', compact('images', 'videos'));
    // }

    public function tourNhaTrang()
    {
        # code...
    }

    public static function tourdetail()
    {
        return view('web::web.tour_detail');
    }

    public static function booking()
    {
        return view('web::web.booking');
    }

    public static function contact()
    {
        return view('web::web.contact');
    }

    public static function tourtype()
    {
        return view('web::web.tour_type');
    }

    public static function search()
    {
        return view('web::web.search');
    }
}
