<?php

namespace App\Http\Controllers;

use App\Jobs\ProcessFeedback;
use App\Http\Controllers\Controller;
use App\Events\MyEvent;
use Illuminate\Http\Request;
use App\Messages;


class MessagesController extends Controller
{


    public function __construct() {
        
    }

    public function fetch_messages() {
        $messages = Messages::orderBy('id', 'asc')->get();
        return response()->json(['messages' => $messages], 200);
    }

    public function insert_message(Request $request) {
        $jsonRaw = file_get_contents('php://input');
        $json = json_decode($jsonRaw);
        if($json!=null){
            for ($i=0; $i < sizeof($json); $i++) { 
                Messages::create([
                    'name' => "Test",
                    'contact_no' => $json[$i]->number,
                    'description' => $json[$i]->message,
                    'status' => "Received",
                    'created_at' => $json[$i]->datetime
                ]);

                ProcessFeedback::dispatch($json[$i]->number, $json[$i]->message);
            }
        } else {
            echo "JSON data error";
        }
    }

    public function process_reply($date, $message, $number) {
        $res=array();
        $this->feedback($number);
        $res['created_at'] = $json[$i]->datetime;
        $res['description'] = $json[$i]->message;
        event(new MyEvent($res));
    }

   
        
}
