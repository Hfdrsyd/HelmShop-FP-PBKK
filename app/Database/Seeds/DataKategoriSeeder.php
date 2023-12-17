<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataKategoriSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'id_kategori' => 3,
                'nama' => 'Sport'
            ],
            [
                'id_kategori' => 4,
                'nama' => 'Bogo'
            ],
            [
                'id_kategori' => 6,
                'nama' => 'Sepeda'
            ]
        ];

        $this->db->table('data_kategori')->insertBatch($data);
    }
}
