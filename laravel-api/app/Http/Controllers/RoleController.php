<?php

namespace App\Http\Controllers;

use App\Http\Resources\RoleResource;
use App\Role;
use App\Traits\ApiResponser;
use Illuminate\Http\Request;

class RoleController extends Controller
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
        $roles = Role::latest()->get();

        return RoleResource::collection($roles);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required'
        ]);

        $role = Role::create($request->all());
        $data = [
            'data' => new RoleResource($role),
            'message' => 'Created successfully'
        ];
        return $this->successResponseData($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Role $role
     * @return \Illuminate\Http\JsonResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request, Role $role)
    {
        $this->validate($request, [
            'name' => 'required|max:200|string'
        ]);

        $role->update($request->all());

        $data = [
            'data' => new RoleResource($role),
            'message' => 'Updated successfully'
        ];
        return $this->successResponseData($data);
    }

    /**
     *  Remove the specified resource from storage.
     *
     * @param Role $role
     * @return \Illuminate\Http\JsonResponse
     * @throws \Exception
     */
    public function destroy(Role $role)
    {
        if ($role->users->count()) {
            return $this->errorResponse('Resource already used somewhere', 403);
        } else {
            $role->delete();
            return $this->successResponse('Deleted successfully');
        }
    }
}
