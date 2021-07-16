<?php

namespace Modules\Post\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Illuminate\Support\Facades\App;
use Modules\Post\Models\Category;
use Modules\Post\Models\Post;

class WebController extends BaseController
{

    /**
     * Danhsach tour
     */
    public function listCategory()
    {
        // dd($data['category']);
        
        $data['category'] = Category::paginate(5);;
        
        // $data['posts'] = Location::get();
        // $data['posts'] = Post::get();
        return view('post::web.category', $data);
    }


    public function post($slug)
    {
        $data['post'] = Post::where('slug', $slug)->where('status', 1)->first();
        // $data['page_title'] = $data['post']['title'];
        return view('post::web.post', $data);
    }
/**
 * 
 */
    public function categories($slug)
    {

        $data['category'] = Category::where('slug', $slug)->first();
        // dd($category->posts);
        $data['posts'] = Post::where('category_id', $data['category']['id'] )->latest()->paginate(12 ); // lay danh sach bai viet thuoc categories do 
        // dd($data['posts']);
      

//         $data['category'] = Category::where('slug', $slug)->first();
// dd($data['category']);
        // if ($data['category']) {
        //     return view('post::web.category', $data);
        // } else {
        //     return abort(404);
        // }
        return view('post::web.category', $data);
    }
}
