<?php

namespace App\Http\Controllers;

use App\Event;
use App\Room;
use Illuminate\Http\Request;

class RoomController extends Controller
{
    public function index()
    {
        //
    }

    public function create(Event $event)
    {
        return view('rooms.create', compact('event'));
    }

    public function store(Request $request, Event $event)
    {
        $request->validate([
            'name' => ['required'],
            'channel_id' => ['required'],
            'capacity' => ['required'],
        ]);

        Room::create($request->only(['name', 'channel_id', 'capacity']));

        return redirect()->route('events.show', $event->id)->with('success', 'Room successfully created');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
