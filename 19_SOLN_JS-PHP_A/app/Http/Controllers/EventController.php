<?php

namespace App\Http\Controllers;

use App\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventController extends Controller
{
    public function index()
    {
        $events = Auth::user()->events()->orderBy('date', 'asc')->get();
        return view('events.index', compact('events'));
    }

    public function create()
    {
        return view('events.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'slug' => ['required', 'unique:events,slug,null,null,organizer_id,'.Auth::user()->id, 'regex:/^[a-z0-9-]+$/'],
            'date' => ['required', 'date_format:Y-m-d'],
        ], [
            'slug.unique' => 'Slug is already used',
            'slug.regex' => 'Slug must not be empty and only contain a-z, 0-9 and \'-\'',
        ]);

        $event = Auth::user()->events()->save(new Event($request->only(['name','slug','date'])));

        return redirect()->route('events.show', $event->id)->with('success', 'Event successfully created');
    }

    public function show(Event $event)
    {
        return view('events.detail', compact('event'));
    }

    public function edit(Event $event)
    {
        return view('events.edit', compact('event'));
    }

    public function update(Request $request, Event $event)
    {
        $request->validate([
            'name' => ['required'],
            'slug' => ['required', 'unique:events,slug,'.$event->id.',id,organizer_id,'.Auth::user()->id, 'regex:/^[a-z0-9-]+$/'],
            'date' => ['required', 'date_format:Y-m-d'],
        ], [
            'slug.unique' => 'Slug is already used',
            'slug.regex' => 'Slug must not be empty and only contain a-z, 0-9 and \'-\'',
        ]);

        $event->update($request->only(['name','slug','date']));

        return redirect()->route('events.show', $event->id)->with('success', 'Event successfully updated');
    }

    public function destroy($id)
    {
        //
    }
}
