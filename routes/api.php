<?php

use Illuminate\Http\Request;
Use App\Messages;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('messages', function() {
    return Messages::all();
});

Route::post('messages', 'MessagesController@insert_message');

Route::get('test', function() {
    event(new App\Events\MyEvent('hello world'));
    return 'qweqwe';
});