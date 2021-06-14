<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Traits\ApiResponser;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    use ApiResponser;

    /**
     * RoleController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        $users = User::with('roles')->latest()->paginate(10);
        return UserResource::collection($users);
    }

    /**
     * Get auth user.
     *
     * @param Request $request
     * @return UserResource
     */
    public function getAuthenticatedUser()
    {
        return new UserResource(auth('api')->user());
    }

    /**
     * Display the specified resource.
     *
     * @param User $user
     * @return UserResource
     */
    public function show(User $user)
    {
        return new UserResource($user);
    }

    /**
     * Assign role to user.
     *
     * @param Request $request
     * @param User $user
     * @return \Illuminate\Http\JsonResponse
     */
    public function addUserRole(Request $request, User $user)
    {
        if ($request->role_ids) {
            $user->roles()->syncWithoutDetaching($request->role_ids);
        }
        return $this->successResponse('Assigned successfully');
    }

    /**
     * Remove role from an user.
     *
     * @param Request $request
     * @param User $user
     * @return \Illuminate\Http\JsonResponse
     */
    public function removeUserRole(Request $request, User $user)
    {
        if ($request->role_id) {
            $user->roles()->detach($request->role_id);
        }
        return $this->successResponse('Deleted successfully');
    }
}
