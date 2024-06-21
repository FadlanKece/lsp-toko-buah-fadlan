<?php

namespace Database\Seeders;

use App\Models\About;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        About::create([
            'judul_website' => 'Fadlan Mart',
            'logo' => 'logo.png',
            'deskripsi' => 'Fadlan Mart is the coolest shop ever',
            'alamat' => 'Jl. Karadenan No. 7',
            'email' => 'fadlan@gmail.com',
            'telepon' => '081234567890',
            'atas_nama' => 'Fadlan Ahmad',
            'no_rekening' => '081234567890'
        ]);
    }
}
