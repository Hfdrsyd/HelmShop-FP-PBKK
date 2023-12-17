<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AllData extends Migration
{
    public function up()
    {
        // Create data_admin table
        $this->forge->addField([
            'id' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'nama' => ['type' => 'VARCHAR', 'constraint' => 150],
            'username' => ['type' => 'VARCHAR', 'constraint' => 50],
            'email' => ['type' => 'VARCHAR', 'constraint' => 50],
            'password' => ['type' => 'VARCHAR', 'constraint' => 180],
        ]);
        $this->forge->addPrimaryKey('id');
        $this->forge->createTable('data_admin', true);

        // Create data_bank table
        $this->forge->addField([
            'id' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'nama_bank' => ['type' => 'INT', 'constraint' => 11],
            'no_rek' => ['type' => 'INT', 'constraint' => 11],
        ]);
        $this->forge->addPrimaryKey('id');
        $this->forge->createTable('data_bank', true);

        // Create data_kategori table
        $this->forge->addField([
            'id_kategori' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'nama' => ['type' => 'VARCHAR', 'constraint' => 100],
        ]);
        $this->forge->addPrimaryKey('id_kategori');
        $this->forge->createTable('data_kategori', true);

        // Create data_pengguna table
        $this->forge->addField([
            'users_id' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'nama' => ['type' => 'VARCHAR', 'constraint' => 150],
            'email' => ['type' => 'VARCHAR', 'constraint' => 200],
            'no_hp' => ['type' => 'VARCHAR', 'constraint' => 20, 'null' => true],
            'alamat_jalan' => ['type' => 'TEXT', 'null' => true],
            'kecamatan' => ['type' => 'VARCHAR', 'constraint' => 180, 'null' => true],
            'kelurahan' => ['type' => 'VARCHAR', 'constraint' => 180, 'null' => true],
            'kota' => ['type' => 'VARCHAR', 'constraint' => 170],
            'password' => ['type' => 'TEXT'],
            'created_at' => ['type' => 'DATETIME'],
            'updated_at' => ['type' => 'DATETIME'],
        ]);
        $this->forge->addPrimaryKey('users_id');
        $this->forge->createTable('data_pengguna', true);

        // Create data_produk table
        $this->forge->addField([
            'id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'nama' => [
                'type' => 'VARCHAR',
                'constraint' => 150,
            ],
            'deskripsi' => [
                'type' => 'TEXT',
            ],
            'gambar' => [
                'type' => 'VARCHAR',
                'constraint' => 200,
            ],
            'kategori' => [
                'type' => 'INT',
                'constraint' => 100,
                'unsigned' => true,
            ],
            'url_slug' => [
                'type' => 'VARCHAR',
                'constraint' => 150,
            ],
            'created_at' => [
                'type' => 'DATETIME',
            ],
            'updated_at' => [
                'type' => 'DATETIME',
            ],
        ]);

        $this->forge->addPrimaryKey('id');
        $this->forge->createTable('data_produk', true);
        $this->db->query('ALTER TABLE `data_produk` ADD KEY `id_kategori` (`kategori`)');
        // Add foreign key constraint
        $this->db->query('ALTER TABLE `data_produk` ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kategori`) REFERENCES `data_kategori`(`id_kategori`)');


        // // Create data_flashsale table
        $this->forge->addField([
            'id_produk' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true],
            'status' => ['type' => 'INT', 'constraint' => 1],
            'harga_sale' => ['type' => 'INT', 'constraint' => 20],
            'start_sale' => ['type' => 'VARCHAR', 'constraint' => 100],
            'end_sale' => ['type' => 'VARCHAR', 'constraint' => 100],
        ]);
        $this->forge->addPrimaryKey('id_produk');
        $this->forge->addUniqueKey('id_produk');
        // $this->forge->addForeignKey('id_produk', 'data_produk', 'id');
        $this->forge->createTable('data_flashsale', true);
        $this->db->query('ALTER TABLE `data_flashsale` ADD CONSTRAINT `data_flashsale_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`)');

        // // Create data_stok_produk table
        $this->forge->addField([
            'id' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'id_produk' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true],
            'ukuran' => ['type' => 'VARCHAR', 'constraint' => 5],
            'stok' => ['type' => 'INT', 'constraint' => 10],
            'harga' => ['type' => 'INT', 'constraint' => 20],
        ]);
        $this->forge->addPrimaryKey('id');
        $this->forge->addKey('id_produk');
        // $this->forge->addForeignKey('id_produk', 'data_produk', 'id');
        $this->forge->createTable('data_stok_produk', true);
        $this->db->query('ALTER TABLE `data_stok_produk` ADD CONSTRAINT `data_stok_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`)');


        // Create data_transaksi table
        $this->forge->addField([
            'id' => ['type' => 'INT', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'kode_trx' => ['type' => 'VARCHAR', 'constraint' => 100],
            'id_buyer' => ['type' => 'INT', 'constraint' => 11],
            'nama_produk' => ['type' => 'TEXT', 'null' => true],
            'nama_bank' => ['type' => 'TEXT', 'null' => true],
            'no_rek_bank' => ['type' => 'VARCHAR', 'constraint' => 50, 'null' => true],
            'variasi' => ['type' => 'TEXT'],
            'kuantitas' => ['type' => 'INT', 'constraint' => 11],
            'status' => ['type' => 'VARCHAR', 'constraint' => 50],
            'bukti_bayar' => ['type' => 'TEXT', 'null' => true],
            'no_resi' => ['type' => 'VARCHAR', 'constraint' => 50, 'null' => true],
            'kurir' => ['type' => 'VARCHAR', 'constraint' => 255],
            'harga' => ['type' => 'INT', 'constraint' => 20],
            'alamat_jalan' => ['type' => 'TEXT'],
            'created_at' => ['type' => 'DATETIME'],
            'updated_at' => ['type' => 'DATETIME'],
        ]);
        $this->forge->addPrimaryKey('id');
        // $this->forge->addForeignKey('id_buyer', 'data_pengguna', 'users_id');
        $this->forge->createTable('data_transaksi', true);
    }

    public function down()
    {
        // Drop tables in reverse order
        $this->forge->dropTable('data_transaksi', true);
        $this->forge->dropTable('data_stok_produk', true);
        $this->forge->dropTable('data_produk', true);
        $this->forge->dropTable('data_pengguna', true);
        $this->forge->dropTable('data_kategori', true);
        $this->forge->dropTable('data_flashsale', true);
        $this->forge->dropTable('data_bank', true);
        $this->forge->dropTable('data_admin', true);
    }
}
