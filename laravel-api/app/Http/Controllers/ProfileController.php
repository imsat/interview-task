<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProfileResource;
use App\Profile;
use App\User;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    /**
     * RoleController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display the specified resource.
     *
     * @param User $user
     * @return ProfileResource
     */
    public function index(User $user)
    {
        return new ProfileResource($user->profile);
    }
}
