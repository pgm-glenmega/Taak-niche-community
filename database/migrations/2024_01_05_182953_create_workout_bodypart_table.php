<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // database/migrations/YYYY_MM_DD_create_bodypart_workout_table.php
        Schema::create('workout_bodypart', function (Blueprint $table) {
        $table->id();
        $table->unsignedBigInteger('bodypart_id');
        $table->unsignedBigInteger('workout_id');
        $table->timestamps();

        // Foreign key constraints
        $table->foreign('bodypart_id')->references('id')->on('bodyparts')->onDelete('cascade');
        $table->foreign('workout_id')->references('id')->on('workouts')->onDelete('cascade');
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('workout_bodypart');
    }
};
