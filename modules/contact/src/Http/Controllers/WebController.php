<?php

namespace Modules\Contact\Http\Controllers;

use Core\Supports\Controllers\BaseController;
use Illuminate\Http\Request;
use Modules\Contact\Jobs\SendMailNewContact;
use Modules\Contact\Models\Contact;

class WebController extends BaseController
{
    public function contact()
    {
        return view('contact::web.contact');
    }

    public function contactStore(Request $request)
    {
        // $request->validate([
        //     'sender_email' => 'required|unique:users,email|max:50',
        //     'sender_phone' => 'nullable|numeric|max:12',
        //     'sender_name' => 'required',
        //     'sender_address' => 'required',
        //     'title' => 'required',
        //     'sender_content' => 'required',
        // ]);
        $data = $request->all();
        Contact::create($data);
        return view('contact::web.contact');
    }
}
