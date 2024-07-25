<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(10)->create();
        \App\Models\Category::factory(5)->create();
        \App\Models\Department::factory(5)->create();
        \App\Models\Subject::factory(10)->create();
        \App\Models\Employee::factory(10)->create();
        \App\Models\Student::factory(10)->create();
        \App\Models\Teacher::factory(10)->create();
        \App\Models\Product::factory(10)->create();
        \App\Models\Order::factory(100)->create();
        \App\Models\StudentSubject::factory(100)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
