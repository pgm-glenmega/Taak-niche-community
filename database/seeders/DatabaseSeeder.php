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
        $this->call(BodypartsTableSeeder::class);
        $this->call(ExercisesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(WorkoutsTableSeeder::class);
        $this->call(ReviewsTableSeeder::class);
        $this->call(WorkoutsBodypartTableSeeder::class);
        $this->call(WorkoutsExercisesTableSeeder::class);
        $this->call(WorkoutsUsersTableSeeder::class);
        $this->call(ExerciseBodypartSeeder::class);
    }
}
