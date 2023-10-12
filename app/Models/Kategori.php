<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    use HasFactory;
    protected $table = 'kategori';
    protected $guarded = ['id'];
    public $timestamps = false;
    public function attribut()
    {
        return $this->hasMany(Attribut::class, 'kategori_id');
    }
}
