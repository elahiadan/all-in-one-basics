<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => Product::all()->random()->name,
            'order_no' => fake()->numberBetween(3000, 10000),
            'price' => fake()->numberBetween(1, 10) . '000',
            'qty' => fake()->numberBetween(1, 10),
            'date' => fake()->dateTimeBetween('2024-07-01', '2024-08-31'),
            'user_id' => User::all()->random()->id,
        ];
    }
}
