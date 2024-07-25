<?php


namespace App\Repositories;

use App\Models\Product;
use App\Repositories\Interfaces\ProductRepositoryInterface;

class ProductRepository implements ProductRepositoryInterface
{
    public function all()
    {
        $categories = Product::latest()->paginate(10);
        return $categories;
    }
}
