<?php

namespace App\Http\Controllers;

use App\Event;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index(Event $event) {
        $sessions = [];
        $attendee = [];
        $capacity = [];

        foreach ($event->channels as $channel) {
            foreach ($channel->rooms as $room) {
                foreach ($room->sessions as $session) {

                    $sessions[] = $session->title;
                    $capacity[] = $room->capacity;

                    if ($session->type === 'talk') {
                        $attendee[] = $event->registrations->count();
                    } else {
                        $attendee[] = $session->sessionRegistrations->count();
                    }
                }
            }
        }

        $data = [
            'sessions' => $sessions,
            'attendee' => $attendee,
            'capacity' => $capacity,
        ];

        return view('reports.index', compact('event', 'data'));
    }
}
