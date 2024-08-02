<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $d1 = date("Y-m-d H:i:s");
        $d2 = date("Y-m-d H:i:s", strtotime("2024-06-01"));
        $data = Order::select(Order::USER_ID, DB::RAW('sum(qty) as total_selling_product_quantity'), DB::RAW('sum(price*qty) as total_sell'))
            ->with('users', function ($q) {
                $q->select('id', 'name', 'email');
            })->whereBetween(Order::CREATED_AT, [$d2, $d1])
            ->groupBy(Order::USER_ID)
            ->orderBy('total_sell', 'desc')
            ->get();
        dd($data->toArray());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = User::select('id', 'name')
            ->withCount('orders')->with('orders') // Count the number of orders per user
            ->orderBy('orders_count', 'desc')
            ->get();

        dd($data->toArray());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        //
    }
}
