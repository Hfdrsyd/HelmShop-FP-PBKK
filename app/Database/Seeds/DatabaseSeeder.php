<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call('DataAdminSeeder');
        $this->call('DataPenggunaSeeder');
        $this->call('DataKategoriSeeder');
        $this->call('DataProdukSeeder');
        $this->call('DataStokProdukSeeder');
        $this->call('DataTransaksiSeeder');
    }
}
