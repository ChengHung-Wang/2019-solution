<?php

namespace App\Http\Controllers\Api;

use App\Attendee;
use App\Http\Controllers\Controller;
use App\Http\Resources\AttendeeResource;
use Illuminate\Http\Request;

class AttendeeController extends Controller
{
    public function login(Request $request)
    {
        $attendee = Attendee::where('lastname', $request->get('lastname'))->where('registration_code', $request->get('registration_code'))->first();

        if (!$attendee) {
            return response()->json(['message' => 'Invalid login'], 401);
        }

        $attendee->login_token = md5($attendee->username);
        $attendee->save();

        return response()->json(new AttendeeResource($attendee));
    }

    public function logout(Request $request)
    {
        $attendee = Attendee::where('login_token', $request->get('token'))->first();

        if (!$attendee) {
            return response()->json(['message' => 'Invalid token'], 401);
        }

        $attendee->login_token = '';
        $attendee->save();

        return response()->json(['message' => 'Logout success']);
    }
}
