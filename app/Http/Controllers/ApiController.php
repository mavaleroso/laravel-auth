<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Api;

class ApiController extends Controller
{
    public function fetch_apis()
    {
        $apis = Api::orderBy('created_at', 'asc')->get();
        return response()->json(['apis' => $apis], 200);
    }

    public function generate_token()
    {
        $newToken = Str::random(60);
        return response()->json(['newToken' => $newToken], 200);
    }

    public function insert_api(Request $request)
    {
        $data = $request->all();
        $query = new Api;
        $query->api_name = $data['api_name'];
        $query->api_token = $data['api_token'];
        $query->api_type = $data['api_type'];
        $query->status = $data['status'];
        if($query->save()) {
            return response()->json(['res' => 'New API inserted successfully.', 'newData' => $query->where('api_token', $data['api_token'])->get()], 200);
        } else {
            return response()->json(['res' => 'Error encountered.'], 401);
        }
    }

    public function delete_api(Request $request)
    {
        $query = Api::where('api_id', $request->id)->delete();
        if($query) {
            return response()->json(['res' => 'Deleted successfully.', 'oldID' => $request->id], 200);
        } else {
            return response()->json(['res' => 'Error encountered.'], 401);
        }
    }

    public function update_api(Request $request)
    {
        $data = $request->all();
        $query = Api::where('api_id', $data['api_id'])->update([
            'api_name' => $data['api_name'],
            'api_token' => $data['api_token'],
            'api_type' => $data['api_type'],
            'status' => $data['status']
        ]);
        if($query) {
            return response()->json(['res' => 'Updated successfully.', 'updatedData' => Api::where('api_id', $data['api_id'])->get()], 200);
        } else {
            return response()->json(['res' => 'Error encountered.'], 401);
        }
    }
}
