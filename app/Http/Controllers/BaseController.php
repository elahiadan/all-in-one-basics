<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BaseController extends Controller
{
    public $ACTIVE = 1;
    public $INACTIVE = 0;
    // public $TODAYDATETIME = date("Y-m-d H:i:s");

    public function __construct(){

    }

}
