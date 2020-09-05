<?php

namespace App\Http\Controllers\Api;

use App\Event;
use App\Http\Controllers\Controller;
use App\Http\Resources\EventDetailResource;
use App\Http\Resources\EventResource;
use App\Organizer;
use Illuminate\Http\Request;

class EventController extends Controller
{
    public function index()
    {
        $events = Event::where('date', '>', date('Y-m-d'))->orderBy('date', 'asc')->get();
        return response()->json(EventResource::collection($events));
    }

    public function show($o, $e)
    {
        $organizer = Organizer::where('slug', $o)->first();
        if (!$organizer) {
            return response()->json(['message' => 'Organizer not found'], 404);
        }

        $event = $organizer->events()->where('slug', $e)->first();
        if (!$event) {
            return response()->json(['message' => 'Event not found'], 404);
        }

        return response()->json(new EventDetailResource($event));
    }
}
