<?php

namespace Modules\Post\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Illuminate\Http\Request;
use Modules\Post\Http\Requests\PostRequest;
use Modules\Post\Models\Category;
use Modules\Post\Repositories\Interfaces\PostInterface;
use Brian2694\Toastr\Facades\Toastr;

class PostController extends BaseController
{
    protected $postRepository;
    protected $categoryRepository;

    function __construct(
        PostInterface $postRepository
    ) {
        $this->postRepository = $postRepository;
    }

    
    /**
     * GET List Posts
     */
    public function getList(Request $request)
    {
        // dd($request->all());
        $data = $this->postRepository->posts($request);
        $data['categories'] =  $this->postRepository->categories();
        
        return view('post::admin.post.list', $data);
    }

    /**
     * GET Add a new post
     */
    public function getAdd()
    {
        if (Category::count() == 0) {
            return redirect()->route('post.admin.index')->with('flash_data', ['type' => 'warning', 'message' => trans('post::notification.first_category')]);
        }
        $data['categories'] = $this->postRepository->categories();
        // dd($data);
        return view('post::admin.post.add', $data);
    }

    /**
     * post add post
     */
    public function postAdd(PostRequest $request)
    {
        $request->validate([
            
            'title' => 'required',
            'slug' => 'required',
            'image' => 'required',
            'description' => 'required',
            'content' => 'required',
            'author' => 'required',
        ], [
            'title.required' => 'Chưa nhập tiêu đề',
            'slug.required' => 'Chưa nhập mật khẩu',
            'image.required' => 'Chưa nhập lại mật khẩu',
            'description.required' => 'Chưa nhập lại mật khẩu',
            'content.required' => 'Chưa nhập lại mật khẩu',
            'author.required' => 'Chưa nhập lại mật khẩu',
            
        ]);

        // dd($request->all());
        $this->postRepository->createPost($request);
        return redirect()->route('post.admin.index')->with('flash_data', ['type' => 'success', 'message' => trans('core::notification.create_success')]);
    }

    /**
     * edit post
     */
    public function getEdit($id)
    {
        $data['post'] = $this->postRepository->find($id);
        $data['categories'] = $this->postRepository->categories();
        return view('post::admin.post.edit', $data);
    }

    /**
     * post add post
     */
    public function postEdit(PostRequest $request)
    {
        $this->postRepository->updatePost($request);
        return redirect()->route('post.admin.index')->with('flash_data', ['type' => 'success', 'message' => trans('core::notification.update_success')]);
    }

    /**
     * delete post
     */
    public function delete($id)
    {
        $this->postRepository->where('id', $id)->delete();
        return redirect()->route('post.admin.index')->with('flash_data', ['type' => 'success', 'message' => trans('core::notification.delete_success')]);
    }

    public function status(Request $request)
    {
        try {
            $this->postRepository->update([
                'status' => $request->status,
            ], $request->id);
            return response()->json(['status' => true, 'msg' => trans('post::notification.update_status')]);
        } catch (\Throwable $th) {
            return response()->json(['status' => false, 'msg' => trans('post::notification.error')]);
        }
    }
}