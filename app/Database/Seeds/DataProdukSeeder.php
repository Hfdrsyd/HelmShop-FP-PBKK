<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataProdukSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'id' => 8,
                'nama' => 'KYT',
                'deskripsi' => 'KYT SportÂ ',
                'gambar' => '1637072078_3534ee7278fc29178664.png',
                'kategori' => 3,
                'url_slug' => 'KYT-6193bcce85c6c',
                'created_at' => '2021-11-16 21:14:38',
                'updated_at' => '2023-12-16 22:28:59'
            ],
            [
                'id' => 9,
                'nama' => 'Cargloss',
                'deskripsi' => '<p><u>el banjir, el gemoy, el 4tidak<br></u></p>',
                'gambar' => '1637072539_09cc38022c04104e48a8.jpg',
                'kategori' => 4,
                'url_slug' => 'Cargloss-6193be9b79259',
                'created_at' => '2021-11-16 21:22:19',
                'updated_at' => '2023-12-16 22:30:25'
            ],
            [
                'id' => 10,
                'nama' => 'Helm Bogo Classic Dewasa Kaca Datar SNI',
                'deskripsi' => 'ok',
                'gambar' => '1637093563_80d8a40e7ec8bbd5ca42.jfif',
                'kategori' => 4,
                'url_slug' => 'Helm-Bogo-Classic-Dewasa-Kaca-Datar-SNI-619410bb172bf',
                'created_at' => '2021-11-17 03:12:43',
                'updated_at' => '2021-11-17 03:13:39'
            ],
            [
                'id' => 11,
                'nama' => 'White Sport',
                'deskripsi' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus libero maxime placeat officia consequuntur magnam aliquam soluta consectetur, commodi odio, ullam architecto, voluptate doloribus vel culpa. Dicta quos eos et fugiat ea.</p><p> Illum laborum fugiat id voluptates cum, odit, itaque error ducimus, neque excepturi vero doloribus amet ratione eum magni.</p>',
                'gambar' => '1637915352_ce1fd09e12c527c48eba.png',
                'kategori' => 3,
                'url_slug' => 'White-Sport-61a09ad8ab9a7',
                'created_at' => '2021-11-26 15:29:12',
                'updated_at' => '2021-11-26 15:29:12'
            ],
            [
                'id' => 14,
                'nama' => 'Helm sepeda',
                'deskripsi' => '<p>el wadas vs el tuwantu<br></p>',
                'gambar' => '1702740933_84fda382247a585ccfec.jpg',
                'kategori' => 6,
                'url_slug' => 'Helm-sepeda-657dc3c589069',
                'created_at' => '2023-12-16 22:35:33',
                'updated_at' => '2023-12-16 22:35:33'
            ]
        ];

        $this->db->table('data_produk')->insertBatch($data);
    }
}
