<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetailPesanan extends Model
{
    use HasFactory;
    protected $table = 'detail_pesanan';
    protected $fillable = ['no_pesanan', 'menu', 'harga','jml'];
    protected $hidden   = ['created_at', 'updated_at'];
}
