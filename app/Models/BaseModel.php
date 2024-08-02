<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{
    const ID = "id";
    const USER_ID = "user_id";
    const STATUS = "ststus";
    const ACTIVE = 1;
    const INACTIVE = 2;
    const CREATED_AT = "created_at";
    const UPDATED_AT = "updated_at";
}
