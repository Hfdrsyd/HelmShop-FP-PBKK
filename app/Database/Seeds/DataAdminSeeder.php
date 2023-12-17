<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataAdminSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'id' => 1,
                'nama' => 'admin',
                'username' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => '$2y$10$.JCwuAvCP2qJ2eb866uJpOpJYr3CkKyc3rALkhcgGfef.r4B/WALe',
            ],
            // Add any other records if available
        ];

        $this->db->table('data_admin')->insertBatch($data);
    }
}
