<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;


class ExerciseBodypart extends Model
{
    use HasFactory;

    public function up()
    {
        Schema::create('exercise_bodyparts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('exercise_id');
            $table->unsignedBigInteger('bodypart_id');
            $table->timestamps();
            
            $table->foreign('exercise_id')->references('id')->on('exercises')->onDelete('cascade');
            $table->foreign('bodypart_id')->references('id')->on('bodyparts')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('exercise_bodyparts');
    }
}
