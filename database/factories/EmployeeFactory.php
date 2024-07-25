<?php

namespace Database\Factories;

use App\Models\Department;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'salary' => fake()->numberBetween(1, 10) . '000',
            'gender' => fake()->randomElement(['male', 'female']),
            'department_id' => Department::all()->random()->id,
            'user_id' => User::all()->random()->id,
        ];
    }
}
