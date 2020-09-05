<?php

namespace App\Http\Controllers;

use App\Event;
use App\Session;
use Illuminate\Http\Request;

class SessionController extends Controller
{
    public function index()
    {
        //
    }

    public function create(Event $event)
    {
        return view('sessions.create', compact('event'));
    }

    public function store(Request $request, Event $event)
    {
        $request->validate([
            "type" => ['required'],
            "title" => ['required'],
            "speaker" => ['required'],
            "room_id" => ['required'],
            // "cost" => ['required'],
            "description" => ['required'],
            "start" => ['required', 'date_format:Y-m-d H:i'],
            "end" => ['required', 'date_format:Y-m-d H:i', 'after:start', function ($attr, $val, $fail) use ($request) {
                $booked = Session::where('room_id', $request->get('room_id'))
                    ->where('start', '<=', $request->get('end'))
                    ->where('end', '>=', $request->get('start'))
                    ->first();

                if ($booked) {
                    $fail('Room already booked during this time');
                }
            }],
        ]);

        $input = $request->only([ 'type', 'title', 'speaker', 'room_id', 'cost', 'start', 'end', 'description' ]);

        if ($input['type'] === 'talk') {
            $input['cost'] = null;
        }

        Session::create($input);

        return redirect()->route('events.show', $event->id)->with('success', 'Session successfully created');
    }

    public function show($id)
    {
        //
    }

    public function edit(Event $event, Session $session)
    {
        return view('sessions.edit', compact('event', 'session'));
    }

    public function update(Request $request, Event $event, Session $session)
    {
        $request->validate([
            "type" => ['required'],
            "title" => ['required'],
            "speaker" => ['required'],
            "room_id" => ['required'],
            // "cost" => ['required'],
            "description" => ['required'],
            "start" => ['required', 'date_format:Y-m-d H:i'],
            "end" => ['required', 'date_format:Y-m-d H:i', 'after:start', function ($attr, $val, $fail) use ($request, $session) {
                $booked = Session::where('room_id', $request->get('room_id'))
                    ->where('start', '<=', $request->get('end'))
                    ->where('end', '>=', $request->get('start'))
                    ->where('id', '<>', $session->id)
                    ->first();

                if ($booked) {
                    $fail('Room already booked during this time');
                }
            }],
        ]);

        $input = $request->only([ 'type', 'title', 'speaker', 'room_id', 'cost', 'start', 'end', 'description' ]);

        if ($input['type'] === 'talk') {
            $input['cost'] = null;
        }

        $session->update($input);
        // Session::create($input);

        return redirect()->route('events.show', $event->id)->with('success', 'Session successfully updated');
    }

    public function destroy($id)
    {
        //
    }
}
