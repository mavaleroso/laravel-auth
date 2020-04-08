<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'AppController@main')->name('main');
Route::get('login', 'AppController@login')->name('login');

Route::prefix('auth')->group(function() {
	Route::get('init', 'AppController@init');
	Route::post('login_request', 'AppController@login_request');
	Route::get('logout_request', 'AppController@logout_request');
});

Route::prefix('messages_group')->group(function() {
	Route::get('fetch_messages', 'MessagesController@fetch_messages');
});

Route::prefix('apis')->group(function() {
	Route::get('fetch_apis', 'ApiController@fetch_apis');
	Route::get('generate_token', 'ApiController@generate_token');
	Route::post('insert_api', 'ApiController@insert_api');
	Route::delete('delete_api', 'ApiController@delete_api');
	Route::put('update_api', 'ApiController@update_api');
});

Route::get('/Dashboard', 'AppController@main');
Route::get('/Messages', 'AppController@main');
Route::get('/Config', 'AppController@main');