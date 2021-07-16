<?php

namespace Modules\Tour\Models;

use Illuminate\Database\Eloquent\Model;

class TourContent extends Model
{
    protected $table = 'tour_content_programs';

    protected $fillable = [
        'id',
        'content',
        'tour_id',
    ];
}