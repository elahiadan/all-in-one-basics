<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class dbup extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:dbup';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'DB Backup';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $filename = "hello.sql";
        $command = "mysqldump --user=" . env('DB_USERNAME') . "--password=" . env('DB_PASSWORD') . "--host=" . env('DB_HOST') . " " . env('DB_DATABASE') . " > " . storage_path() . "/app/backup-temp/" . $filename;
        exec($command);
    }
}
