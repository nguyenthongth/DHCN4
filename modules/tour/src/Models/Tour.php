<?php

namespace Modules\Tour\Models;

use Core\Traits\Filterable;
use Illuminate\Database\Eloquent\Model;

class Tour extends Model
{
    use Filterable;
    protected $table = 'tours';

    protected $fillable = [
        'id',
        'title', // tieu de tour
        'description', // Mo ta ngan
        'tour_code', // ma tour
        'date_go', // ngay di
        'price', // gia
        'leave_from', // diem du lich 
        'total_date', // tong so ngay
        'contact_us', // lien he
        'locaion_id',
        'image_tour', // lien he
        'status',
    ];

    public function location()
    {
        return $this->belongsTo(Location::class, 'locaion_id');
    }


    public function calendarTour()
    {
        return $this->hasOne(TourContent::class, 'tour_id');
    }

    public function filterTitle($query, $value)
    {

        return $query->where('title', 'LIKE', '%' . $value . '%');
    }
}