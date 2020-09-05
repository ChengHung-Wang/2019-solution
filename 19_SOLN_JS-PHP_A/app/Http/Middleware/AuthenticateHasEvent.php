<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class AuthenticateHasEvent
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $event = Auth::user()->events()->find($request->segment(2));
        if ($event) {
            return $next($request);
        } else {
            return redirect()->route('events.index')->with('danger', 'Invalid Event');
        }
    }
}
