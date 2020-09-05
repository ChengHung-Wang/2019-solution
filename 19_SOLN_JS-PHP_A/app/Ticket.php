<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    public $timestamps = false;
    protected $guarded = [];
    protected $table = 'event_tickets';

    public function getValidityAttribute()
    {
        $validity = json_decode($this->special_validity);
        if ($validity) {
            return $validity;
        }
        return false;
    }

    public function getDescriptionAttribute()
    {
        if ($this->validity) {
            if ($this->validity->type === 'amount') {
                return "{$this->validity->amount} tickets available";
            } else {
                $date = Carbon::parse($this->validity->date)->format('F j, Y');
                return "Available until {$date}";
            }
        }

        return null;
    }

    public function getAvailableAttribute()
    {
        if ($this->validity) {
            if ($this->validity->type === 'amount') {
                if ($this->validity->amount <= $this->registrations->count()) return false;
            } else {
                if ($this->validity->date < date('Y-m-d')) return false;
            }
        }
        return true;
    }

    public function registrations()
    {
        return $this->hasMany('App\Registration');
    }

    public function event()
    {
        return $this->belongsTo('App\Event');
    }
}
