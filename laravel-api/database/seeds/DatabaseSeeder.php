<?php

use App\Profile;
use App\Role;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

        Role::truncate();
        User::truncate();
        Profile::truncate();

        $this->call(RoleSeeder::class);

        $roles = ['admin', 'author', 'editor', 'employee'];
        //for Admin
        $admin = factory(User::class)->create([
            'first_name' => 'Admin',
            'last_name' => '',
            'email' => 'admin@mail.com',
        ]);
        $admin->assignRoles($roles);

        $admin->profile()->create([
            'dob' => '1994-09-25',
            'gender' => 1,
            'address' => 'Mirpur 1, Dhaka Bangladesh',
        ]);

        $users = factory(User::class, 50)->create();

        $users->each(function ($user) use ($roles) {
            factory(Profile::class)->create(['user_id'=> $user->id]);
            $user->roles()->sync(mt_rand(2,4));
        });
    }
}
