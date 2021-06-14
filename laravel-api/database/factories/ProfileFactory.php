<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Profile;
use Faker\Generator as Faker;

$factory->define(Profile::class, function (Faker $faker) {
    return [
        'user_id' => 1,
        'dob' => $faker->date(),
        'gender' => mt_rand(1,3),
        'address' => $faker->address,
    ];
});
