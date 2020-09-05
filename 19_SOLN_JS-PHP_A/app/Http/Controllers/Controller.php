<?php

namespace App\Http\Controllers;

use App\Organizer;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
        Organizer::find(1)->update(['password_hash' => md5('demopass1')]);
        Organizer::find(2)->update(['password_hash' => md5('demopass2')]);
    }
}
