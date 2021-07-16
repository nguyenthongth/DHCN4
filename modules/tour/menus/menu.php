<?php

use Modules\Post\Models\Category;
use Modules\Tour\Models\Tour;

app()->getLocale();
$menuitem[] = [
   'title_vi' =>  'Tour du lịch',
   // 'title_en' => isset($tour->translate('en', true)->title) ? $tour->translate('en', true)->title : '',
   'link' => 'danh-sach-tour'
];