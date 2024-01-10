<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Bodypart;



class BodypartsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $bodyParts= ["chest", "back", "legs", "arms", "shoulders", "abs"];

        

        foreach($bodyParts as $bodyPart){
            Bodypart::create([
                'name' => $bodyPart,
            ]);
        };
    }
}
