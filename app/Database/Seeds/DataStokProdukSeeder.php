<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataStokProdukSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'id' => 12,
                'id_produk' => 8,
                'ukuran' => 'XL',
                'stok' => 5,
                'harga' => 800000
            ],
            [
                'id' => 13,
                'id_produk' => 8,
                'ukuran' => 'L',
                'stok' => 3,
                'harga' => 499999
            ],
            [
                'id' => 14,
                'id_produk' => 9,
                'ukuran' => 'XL',
                'stok' => 59,
                'harga' => 800000
            ],
            [
                'id' => 15,
                'id_produk' => 9,
                'ukuran' => 'L',
                'stok' => 0,
                'harga' => 800000
            ],
            [
                'id' => 16,
                'id_produk' => 10,
                'ukuran' => 'XL',
                'stok' => 10,
                'harga' => 400000
            ],
            [
                'id' => 17,
                'id_produk' => 8,
                'ukuran' => 'M',
                'stok' => 3,
                'harga' => 900000
            ],
            [
                'id' => 18,
                'id_produk' => 11,
                'ukuran' => 'XL',
                'stok' => 9,
                'harga' => 499000
            ],
            [
                'id' => 19,
                'id_produk' => 11,
                'ukuran' => 'L',
                'stok' => 12,
                'harga' => 450000
            ],
            [
                'id' => 22,
                'id_produk' => 14,
                'ukuran' => 'L',
                'stok' => 5,
                'harga' => 50000
            ],
            [
                'id' => 23,
                'id_produk' => 14,
                'ukuran' => 'XL',
                'stok' => 5,
                'harga' => 60000
            ]
        ];

        $this->db->table('data_stok_produk')->insertBatch($data);
    }
}
