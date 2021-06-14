<?php
use Illuminate\Support\Facades\Route;




Route::group(['prefix' => 'auth'], function () {
    Route::post('/register', 'Auth\ApiRegisterController@register');

});

/**
 * Role
 */
Route::apiResource('/roles', 'RoleController');

/**
 * User Profile
 */
Route::apiResource('/users/{user}/profile', 'ProfileController');

/**
 * User
 */
Route::get('/user','UserController@getAuthenticatedUser');
Route::post('/users/{user}/add-role', 'UserController@addUserRole')->name('users.add-role');
Route::post('/users/{user}/delete-role', 'UserController@removeUserRole')->name('users.delete-role');
Route::apiResource('/users', 'UserController');




