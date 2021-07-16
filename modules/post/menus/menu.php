<?php

use Modules\Post\Models\Category;

app()->getLocale();
$categories = Category::get();
$menuitem = [];
foreach ($categories as $category) {
   $menuitem[] = [
      'title_vi' =>  $category->title,
      // 'title_en' => isset($category->translate('en', true)->title) ? $category->translate('en', true)->title : '',
      'link' => 'danh-muc-bai-viet/' . $category['slug']
   ];
}