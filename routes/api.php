<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Frontend\FrontendController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::get('products', [ProductController::class, 'apiIndex']);
// Route::get('products/{id}', [ProductController::class, 'apiShow']);
// Route::get('products/{id}', [ProductController::class, 'apiShow']);

Route::get('collections/', [FrontendController::class, 'collectionsAPI']);
Route::get('collections/{id}', [FrontendController::class, 'collectionsShowAPI']);
