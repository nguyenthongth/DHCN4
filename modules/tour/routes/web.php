<?php

Route::group(['namespace' => '\Modules\Tour\Http\Controllers', 'middleware' => 'web'], function () {
    /**
     * ROUTES FOR ADMIN: Tour
     */
    Route::group(['middleware' => ['auth'], 'prefix' => config('cms.admin_prefix') . '/tours'], function () {
        Route::get('/', [
            'as' => 'tour.admin.list',
            'uses' => 'TourController@getList',
            'permission' => 'tour.admin.index',
        ]);
        Route::get('create', [
            'as' => 'tour.admin.create',
            'uses' =>
            'TourController@create',
            'permission' => 'tour.admin.index',
        ]);
        Route::post('create', [
            'as' => 'tour.admin.create',
            'uses' =>
            'TourController@store',
            'permission' => 'tour.admin.index',
        ]);
        Route::get('edit/{id}', [
            'as' => 'tour.admin.edit',
            'uses' =>
            'TourController@edit',
            'permission' => 'tour.admin.index',
        ]);
        Route::post('edit/{id}', [
            'as' => 'tour.admin.edit',
            'uses' =>
            'TourController@update',
            'permission' => 'tour.admin.index',
        ]);
        Route::get('delete/{id}', [
            'as' => 'tour.admin.delete',
            'uses' =>
            'TourController@delete',
            'permission' => 'tour.admin.index',
        ]);

        Route::get('location', [
            // 'as' => 'tour.admin.delete',
            'uses' =>
            'TourController@location',
            'permission' => 'tour.admin.index',
        ]);

        Route::get('booking', [
            'as' => 'tour.admin.booking',
            'uses' =>
            'TourController@booking',
            'permission' => 'tour.admin.index',
        ]);

        Route::get('booking/edit1/{id}', [
            'as' => 'tour.admin.edit1',
            'uses' =>
            'TourController@edit1',
            'permission' => 'tour.admin.index',
        ]);

        Route::post('booking/edit1/{id}', [
            'as' => 'tour.admin.edit1',
            'uses' =>
            'TourController@updateBooking',
            'permission' => 'tour.admin.index',
        ]);
        Route::get('booking/cancel/{id}', [
            'as' => 'tour.admin.cancel',
            'uses' =>
            'TourController@cancel',
            'permission' => 'tour.admin.index',
        ]);
       
    });
});


/**
 * ROUTES FOR WEB: TOur
 */
Route::group(['namespace' => '\Modules\Tour\Http\Controllers'], function () {

    Route::get('danh-sach-tour', [
        'as' => 'web.tour.list',
        'uses' => 'WebController@listTour'
    ]);

    Route::get('chi-tiet-tours/{id}', [
        'as' => 'web.tour.detail',
        'uses' => 'WebController@tour'
    ]);

    Route::get('dat-tours/{id}', [
        'as' => 'web.tour.booking',
        'uses' => 'WebController@booking'
    ]);


    Route::post('dat-tours/{id}', [
        'as' => 'web.tour.booking',
        'uses' => 'WebController@bookingStore'
    ]);

    Route::get('danh-sach-tour/dia-diem/{id}', [
        'as' => 'web.tour.location',
        'uses' => 'WebController@tourLocation'
    ]);
});