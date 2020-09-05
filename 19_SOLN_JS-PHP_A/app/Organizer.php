<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Organizer extends Authenticatable
{
    public $timestamps = false;
    protected $guarded = [];

    public function events()
    {
        return $this->hasMany('App\Event');
    }
}
