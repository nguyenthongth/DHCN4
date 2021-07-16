<?php

namespace Modules\Tour\Repositories\Eloquents;

use Core\Supports\Repositories\Eloquents\BaseRepository;
use Modules\Tour\Models\Tour;
use Modules\Tour\Repositories\Interfaces\TourInterface;

class TourRepository extends BaseRepository implements TourInterface
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    function model()
    {
        return Tour::class;
    }
}