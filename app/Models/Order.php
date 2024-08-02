<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class Order extends BaseModel
{
    use HasFactory;

    const PENDING = "pending";
    const ACCEPTED = "accepted";
    const INPROGRESS = "inprogress";
    const CANCELLED = "cancelled";
    const DELIVERED = "delivered";


    const NAME = "delivered";
    const ORDER_NO = "order_no";
    const PRICE = "price";
    const QTY = "qty";
    const DATE = "date";



    public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
