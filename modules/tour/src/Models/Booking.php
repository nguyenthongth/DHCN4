<?php

namespace Modules\Tour\Models;
 // tham cai duoi de search
use Core\Traits\Filterable;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    // tham cai duoi de search
    use Filterable;
    protected $table = 'bookings';

    protected $fillable = [
        'id',
        'customer',
        'address',
        'total_customer',
        'email',
        'phone',
        'note',
        'status',
        'tour_id',
    ];

    public function tour()
    {
        return $this->belongsTo(Tour::class, 'tour_id');
    }
    /***
     * function search 
     */
    public function filterTitle($query, $value)
    {

        return $query->where('customer', 'LIKE', '%' . $value . '%');
    }
    
}