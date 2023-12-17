<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataPenggunaSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'users_id' => 1,
                'nama' => 'Danang Kusuma',
                'email' => 'danang@gmail.com',
                'no_hp' => '08923912838',
                'alamat_jalan' => 'ijsaisja',
                'kecamatan' => 'jaisjais',
                'kelurahan' => 'aisjaisj',
                'kota' => 'saksjasj',
                'password' => '$2y$10$xK4h4U5pXkY4lD9zI1ND0Oi5aNHBi./2q7U6iR6n/F1wB9cUq3w3i',
                'created_at' => '2021-11-20 04:21:52',
                'updated_at' => '2021-11-23 15:30:59'
            ],
            [
                'users_id' => 5,
                'nama' => 'Ridho',
                'email' => 'agus@gmail.com',
                'no_hp' => '081219832835',
                'alamat_jalan' => 'Komp guru Minda no25',
                'kecamatan' => 'palung',
                'kelurahan' => 'air',
                'kota' => 'Tangerang',
                'password' => '$2y$10$xgLSGVCONk0nE/6yIlBze.eOWHXPWFmeBGkR4fITTn.MeApFKr6fu',
                'created_at' => '2021-11-24 14:39:17',
                'updated_at' => '2021-11-24 14:44:49'
            ],
            [
                'users_id' => 6,
                'nama' => 'Deva',
                'email' => 'kokoka@gmail.com',
                'no_hp' => '081111111111',
                'alamat_jalan' => 'Jln.Marunda ',
                'kecamatan' => 'Kelapa dua',
                'kelurahan' => 'Jatiasih',
                'kota' => 'Jakarta',
                'password' => '$2y$10$H2CwMPvCFFjuSCo5yJv4VOdVrOMX.xnoxG4Cvi3rLo5IEg78UBXa6',
                'created_at' => '2021-11-28 10:32:29',
                'updated_at' => '2021-11-28 10:35:02'
            ],
            [
                'users_id' => 7,
                'nama' => 'admin',
                'email' => 'admin@gmail.com',
                'no_hp' => null,
                'alamat_jalan' => null,
                'kecamatan' => null,
                'kelurahan' => null,
                'kota' => '',
                'password' => '$2y$10$/lfKsy/nj5OEli1HHcPxR.hD7qKAPWau5xHvcg9JJWF6SBc4PUeb.',
                'created_at' => '2023-12-16 20:28:40',
                'updated_at' => '2023-12-16 20:28:40'
            ],
            [
                'users_id' => 8,
                'nama' => 'yanto',
                'email' => 'yanto@rektor.its.ac.id',
                'no_hp' => '08981110123',
                'alamat_jalan' => 'Jl buntu no 30, 01/02, pangkah, ujungpangkah, meksiko',
                'kecamatan' => 'Ujungpangkah',
                'kelurahan' => 'Pangkah',
                'kota' => 'Meksiko',
                'password' => '$2y$10$yQ9q/0cT2q1LyuX9HI1dHe1xBNZvnmvzJ3k7FlDET7TImigxfeYn6',
                'created_at' => '2023-12-16 21:56:03',
                'updated_at' => '2023-12-16 22:14:34'
            ],
            [
                'users_id' => 9,
                'nama' => 'abeng',
                'email' => 'abeng@gemoy.com',
                'no_hp' => '0818294853239',
                'alamat_jalan' => 'sebelah lumpur lapindo',
                'kecamatan' => 'porong',
                'kelurahan' => 'rambutan',
                'kota' => 'sidoarjo',
                'password' => '$2y$10$8I5UsjpVsylDTverRvHZ6OFH7UleEwO3OLs9G2A7aJonuS3/YeBJm',
                'created_at' => '2023-12-16 22:23:29',
                'updated_at' => '2023-12-16 22:26:01'
            ],
        ];

        $this->db->table('data_pengguna')->insertBatch($data);
    }
}
