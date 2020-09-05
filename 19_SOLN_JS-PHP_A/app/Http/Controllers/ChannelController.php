<?php

namespace App\Http\Controllers;

use App\Channel;
use App\Event;
use Illuminate\Http\Request;

class ChannelController extends Controller
{
    public function index()
    {
        //
    }

    public function create(Event $event)
    {
        return view('channels.create', compact('event'));
    }

    public function store(Request $request, Event $event)
    {
        $request->validate([
            'name' => ['required'],
        ]);

        $event->channels()->save(new Channel($request->only(['name'])));

        return redirect()->route('events.show', $event->id)->with('success', 'Channel successfully created');
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
