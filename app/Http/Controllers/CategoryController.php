<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Repositories\Interfaces\CategoryRepositoryInterface;

class CategoryController extends BaseController
{
    private $categories;
    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categories = $categoryRepository;
    }
    public function index()
    {


          
            // $mysqlDatabaseName = env('DB_DATABASE');
            // $mysqlUserName = env('DB_USERNAME');
            // $mysqlPassword =  env('DB_PASSWORD');
            // $mysqlHostName = env('DB_HOST');
    
            // $mysqlExportPath = 'myback_';
            // $date = date("Y-m-d-H-i-s");
            // $command = 'mysqldump --opt -h' . $mysqlHostName . ' -u' . $mysqlUserName . ' -p' . $mysqlPassword . ' ' . $mysqlDatabaseName . ' > ../../' . $mysqlExportPath . $date . '.sql';
            // exec($command, $worked);
            // switch ($worked) {
            //     case 0:
            //         echo 'Database <b>' . $mysqlDatabaseName . '</b> successfully exported to <b>~/' . $mysqlExportPath . '</b>';
            //         break;
            //     case 1:
            //         echo 'There was a warning during the export';
            //         break;
            //     case 2:
            //         echo 'There was an error during export.';
            //         break;
            // }
    
    

        $categories = $this->categories->all();
        dd($categories);
        return view('categories.index', compact('categories'));
    }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        //
    }
}
