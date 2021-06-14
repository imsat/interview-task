<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Traits\ApiResponser;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class ApiRegisterController extends Controller
{
    use ApiResponser;

    /**
     * ApiLoginController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['register']]);
    }

    /**
     * User registration
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function register(Request $request)
    {
        $this->validate($request, [
            'first_name' => 'required|string|max:255',
            'email' => 'required|email|string|max:255|unique:users',
            'password' => 'required|string|min:6|max:30|confirmed',
        ]);

        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);
        $user->profile()->create();

        if ($user) {
            $data = [
                'user' => $user,
                'message' => 'Registered successfully',
                'code' => '200',
            ];
            return $this->successResponse($data);
        } else {
            return $this->errorResponse('something went wrong');
        }


    }
}
