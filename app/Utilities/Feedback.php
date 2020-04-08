<?php 

function send_feedback($number, $message) {

    $message = process_feedback($message);

    $objData = [array('number' => '09489571604', 'message' => $message, 'sim' => '1', 'attempt' => '0')];
    $url = "https://fcm.googleapis.com/fcm/send";
    // $token = "fmmZyqYtJVU:APA91bEA7eDQEwRYXWp9Nm_hYciLKbC_wYLF0E2BLbkIDfrb3a0i72gs-7u3eWX0I_L8gIC-pcGbaqizCMA4dqnlUfDRqBWc-Op6vdG0daYGq14lPjke_ftxR10b0286uai9Z8X7qvjH";
    // $token = "dzcY9iTGStCM6dvMsJIs-c:APA91bEFQyWaqVnzSLl7yCYDwDuaqdW9gfxRi8Do2St8IqMdJQKZBYcwp8bn8AGSVk4xNSpO_GLUklOOOQbwvIL9Eqy_mvJxMuVgcJgl19rWME9PY3sVqPsMATgXrRT9vXsDsVDHAGBo";
    $token = "dJUMgeoYQe2FwZqOOtQqxx:APA91bFqOkbOsAISEVfbVbVeeWnYqaFsArL9gE9UridnpUemwg9CyPTwLZMH0cefqAifdDAyamBR5v3kF8eQXGsiZjE3hRCKVQrv47IOUXTnDGsRaHLXucwKifNUk3V5N7dbSAsK6lA7";
    // $token = "cDwjAIxoTq-tuNtc-Dz-RH:APA91bE8EJ1XbgXmWTMaNpAksRt0mTGujRFk4RxAaXpKJ_ylyotZ08Ag58KH8jBqoJQ4UT05ejFGRuE5uTyRic9UaBAagEFFzNjNPnZiIyk56GllbmpbLd-BaG1V5apaeicfRflvJP3f";
    $serverKey = 'AAAARijH724:APA91bHAqsLD2wxOWWaOHoZyieOC_Z2Mwg-iNsifcIMTy3gvmknVJYIgmZLvxXhQmGpd4qgoj3SqK0PZAcUUXi3AG4SGyPWpC_9YQ5E0U-f0Zy9LC_GgtBJfQB892Hy7C4KURtQU2Cqw';
    $title = "Notification title";
    $body = json_encode($objData);
    $notification = array('title' =>$title , 'body' => $body, 'sound' => 'default', 'badge' => '1');
    $arrayToSend = array('to' => $token, 'notification' => $notification,'priority'=>'high');
    $json = json_encode($arrayToSend);
    $headers = array();
    $headers[] = 'Content-Type: application/json';
    $headers[] = 'Authorization: key='. $serverKey;
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST,"POST");
    curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
    curl_setopt($ch, CURLOPT_HTTPHEADER,$headers);
    //Send the request
    $response = curl_exec($ch);
    //Close request..
    if ($response === FALSE) {
    die('FCM Send Error: ' . curl_error($ch));
    }
    curl_close($ch);

}

function process_feedback($message) {

    $arr = explode(' ',trim($message));

    switch ($arr[0]) {
        case 'TE':
            if (array_key_exists(3, $arr)) {
                return 'YOUR TE FOR THE MONTH OF '.$arr[3].', '.$arr[2].' IS 999,999.00';
            } else {
                return 'YOUR TE FOR THE YEAR OF '.$arr[2].' IS 999,999.00';
            }
            break;
        
        case 'SALARY':
            return 'YOUR SALARY IS 999,999.00';
            break;

        case 'PERA':
            return 'YOUR PERA IS 999,999.00';
            break;

        case 'RATA':
            return 'YOUR RATA IS 999,999.00';
            break;

        case 'SP':
            return 'YOUR SP IS 999,999.00';
            break;

        case 'PO':
            return 'YOUR PO IS 999,999.00';
            break;
        
        default:
            return 'Invalid Inquiry Code
            You may use the ff. codes: 
            1. For All Your TE: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)
            2. For TE by Month: Text TE<space>Employee ID Number<space>YEAR(e.g. 2017)<space>Month(e.g. JAN)
            3. For Salary: Text SALARY<space>Employee ID Number
            4. For PERA: Text PERA<space>Employee ID Number
            5. For RATA: Text RATA<space>Employee ID Number
            6. For CIU Service Provider: Text SP<space>Tracking Number
            7. For Procurement Service Provider: Text PO<space>Purchase Order Number';
            break;
    }
}

?>