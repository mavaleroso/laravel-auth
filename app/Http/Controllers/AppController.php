<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class AppController extends Controller
{
    public function init()
    {
    	$user = Auth::user();
    	return response()->json(['user' => $user], 200);
	}
	
	public function main()
	{
		if(session()->has('user_id')){
			return view('welcome');
		} else {
			return redirect()->route('login');
		}
	}

	public function login()
	{
		if (session()->has('user_id')) {
			return redirect()->route('main');
		} else {
			return view('auth');
		}
	}

    public function login_request(Request $request)
    {
    	if (Auth::attempt(['username' => $request->username, 'password' => $request->password], true)) {
			$user = Auth::user();
            session()->put('user_id', $user->id);
            session()->put('user_uname', $user->username);
            Auth::login($user);
    	} else {
    		return response()->json(['error' => 'Could not log you in.'], 401);
    	}
    }


    public function logout_request()
    {
		Auth::logout();
        session()->flush();
        return redirect()->route('login');
    }
}
