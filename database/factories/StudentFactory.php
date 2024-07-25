<?php

namespace Database\Factories;

use App\Models\User;
use App\Models\Subject;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
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
            'marks' => fake()->numberBetween(10, 100),
            'gender' => fake()->randomElement(['male', 'female']),
            'subject_id' => Subject::all()->random()->id,
            'user_id' => User::all()->random()->id,
        ];
    }
}
