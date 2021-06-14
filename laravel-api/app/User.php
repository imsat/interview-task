<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The attributes that should be concat user first name and last name.
     *
     * @var array
     */
    protected $appends = [
        'full_name'
    ];

    /**
     * Get the user's full name.
     *
     * @return string
     */
    public function getFullNameAttribute()
    {
        return "{$this->first_name} {$this->last_name}";
    }

    /**
     * Relationship about profile with user
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function profile()
    {
        return $this->hasOne(Profile::class);
    }

    /**
     * Relationship about role with user
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }


    /**
     * Assign Roles to users
     */
    public function assignRole($role)
    {
        return $this->roles()->syncWithoutDetaching(
            Role::whereName($role)->firstOrFail()
        );
    }

    /**
     * Assign multiple Roles to users
     */

    public function assignRoles($roles)
    {
        foreach ($roles as $role) {
            $this->roles()->syncWithoutDetaching(
                Role::whereName($role)->firstOrFail()
            );
        }
        return $this;
    }
}
