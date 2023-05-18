<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthController extends BaseController

{
    /**
    * Register api
    *
    * @return \Illuminate\Http\Response
    */

    /** get all users */
    public function index()
    {
        $users = User::all();
        return $this->sendResponse($users, 'Displaying all users data');
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());       
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        // $success['token'] =  $user->createToken('MyApp')->plainTextToken;
        $success['email'] =  $user->email;
        $success['name'] =  $user->name;
        return response()->json([
            'user_info' => $success,
            'message' => 'User Registered Successfully!'
        ], 200);
    }

    /**
    * Login api
    *
    * @return \Illuminate\Http\Response
    */

    public function login(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        { 
            $user = Auth::user(); 

            $success['id'] =  $user->id;
            $success['token'] =  $user->createToken('MyApp')->plainTextToken; 
            $success['name'] =  $user->name;
            $success['email'] =  $user->email;

            return response()->json([
                'user_info' => $success,
                'message' => 'User Logged In Successfully!'
            ], 200);

        } else { 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();

        return response()->json(['message' => 'Logged out successfully']);
    }
}
