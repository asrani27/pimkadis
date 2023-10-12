<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attribut extends Model
{
    use HasFactory;
    protected $table = 'attribut';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function kategori()
    {
        return $this->belongsTo(Kategori::class, 'kategori_id');
    }
}