<?php

namespace App\Http\Controllers\Api;

use App\Attendee;
use App\Event;
use App\Http\Controllers\Controller;
use App\Http\Resources\RegistrationResource;
use App\Registration;
use App\SessionRegistration;
use App\Ticket;
use Illuminate\Http\Request;

class RegistrationController extends Controller
{
    public function register(Request $request, $o, $e)
    {
        $attendee = Attendee::where('login_token', $request->get('token'))->first();

        if (!$attendee) {
            return response()->json(['message' => 'User not logged in'], 401);
        }

        $ticket = Ticket::where('id', $request->get('ticket_id'))->first();

        if (!$ticket || !$ticket->available) {
            return response()->json(['message' => 'Ticket is no longer available'], 401);
        }

        $ticket_ids = Event::where('slug', $e)->first()->tickets->pluck('id');
        $already = $attendee->registrations()->whereIn('ticket_id', $ticket_ids)->first();
        if ($already) {
            return response()->json(['message' => 'User already registered'], 401);
        }

        $registration = Registration::create([
            'attendee_id' => $attendee->id,
            'ticket_id' => $ticket->id,
            'registration_time' => now(),
        ]);

        $session_ids = $request->get('session_ids');
        if ($session_ids) {
            foreach ($session_ids as $session_id) {
                SessionRegistration::create([
                    'registration_id' => $registration->id,
                    'session_id' => $session_id,
                ]);
            }
        }

        return response()->json(['message' => 'Registration successful']);
    }

    public function registrations(Request $request)
    {
        $attendee = Attendee::where('login_token', $request->get('token'))->first();

        if (!$attendee) {
            return response()->json(['message' => 'User not logged in'], 401);
        }

        return response()->json(['registrations' => RegistrationResource::collection($attendee->registrations)]);
    }
}
