<?php

Breadcrumbs::for('tour.admin.list', function ($trail) {
    $trail->parent('dashboard');
    $trail->push(trans('tour::admin.tour_management'), route('tour.admin.list'));
});


Breadcrumbs::for('tour.admin.create', function ($trail) {
    $trail->parent('tour.admin.list');
    $trail->push('Thêm mới tour', route('tour.admin.create'));
});

Breadcrumbs::for('tour.admin.edit', function ($trail, $id) {
    $trail->parent('tour.admin.list');
    $trail->push('Thêm mới tour', route('tour.admin.edit', $id));
});

Breadcrumbs::for('tour.admin.booking', function ($trail) {
    $trail->parent('tour.admin.list');
    $trail->push('Danh sách đặt tour', route('tour.admin.booking'));
});

Breadcrumbs::for('tour.admin.edit1', function ($trail, $id) {
    $trail->parent('tour.admin.booking');
    $trail->push('Chỉnh sửa tour', route('tour.admin.edit1', $id));
});