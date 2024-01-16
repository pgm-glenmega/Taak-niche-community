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
        Schema::create('bodypart_exercise', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('bodypart_id');
            $table->unsignedBigInteger('exercise_id');
            $table->timestamps();

            // Foreign key constraints
            $table->foreign('bodypart_id')->references('id')->on('bodyparts')->onDelete('cascade');
            $table->foreign('exercise_id')->references('id')->on('exercises')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bodypart_exercise');
    }
};
