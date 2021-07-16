<?php

namespace Modules\Tour\Models;

use Core\Traits\Filterable;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use Filterable;
    protected $table = 'locations';

    protected $fillable = [
        'id',
        'title', // ten dia diem
        'status',
    ];

    // public function filterTitle($query, $value)
    // {

    //     return $query->where('customer', 'LIKE', '%' . $value . '%');
    // }
    
}