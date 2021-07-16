<?php

namespace Modules\Tour\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TourRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if ($this->has('id')) {
            return [
                'title' => 'required'
            ];
        }
        return [
            'title' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'title.required' => trans('tour::common.validation.title_tour_required'),
        ];
    }
}