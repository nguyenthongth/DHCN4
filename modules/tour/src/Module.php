<?php

namespace Modules\Tour;

use Illuminate\Support\Facades\Schema;

class Module
{
    public static function uninstall()
    {
        Schema::dropIfExists('locations');
        Schema::dropIfExists('tours');
        Schema::dropIfExists('tour_content_programs');
        Schema::dropIfExists('bookings');
    }
}