<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('category', [CategoryController::class, 'index'])->name('categories');
Route::post('category', [CategoryController::class, 'show'])->name('category');
Route::get('products', [ProductController::class, 'index'])->name('products');
Route::get('query', [OrderController::class, 'index'])->name('query');
Route::get('stud', [StudentController::class, 'index'])->name('stud');
