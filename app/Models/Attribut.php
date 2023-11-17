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

    public function kecamatan()
    {
        return $this->belongsToMany(Kecamatan::class, 'attribut_kecamatan', 'kecamatan_id', 'attribut_id');
    }
    public function tagging()
    {
        return $this->hasMany(Tagging::class, 'attribut_id');
    }
}
