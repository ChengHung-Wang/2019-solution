<?php

namespace App\Http\Controllers;

use App\Event;
use App\Ticket;
use Illuminate\Http\Request;

class TicketController extends Controller
{
    public function index()
    {
        //
    }

    public function create(Event $event)
    {
        return view('tickets.create', compact('event'));
    }

    public function store(Request $request, Event $event)
    {
        $special_validity = null;
        $val = [];

        if ($request->get('special_validity') === 'amount') {
            $special_validity = json_encode([
                'type' => 'amount',
                'amount' => $request->get('amount'),
            ]);
            $val = ['amount' => ['required']];
        }

        if ($request->get('special_validity') === 'date') {
            $special_validity = json_encode([
                'type' => 'date',
                'date' => $request->get('valid_until'),
            ]);
            $val = ['valid_until' => ['required']];
        }

        $request->validate(array_merge([
            'name' => ['required'],
            'cost' => ['required'],
        ], $val));

        $input = array_merge($request->only(['name', 'cost']), ['special_validity' => $special_validity]);

        $event->tickets()->save(new Ticket($input));

        return redirect()->route('events.show', $event->id)->with('success', 'Ticket successfully created');
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
