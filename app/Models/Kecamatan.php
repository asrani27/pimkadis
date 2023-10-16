<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kecamatan extends Model
{
    use HasFactory;
    protected $table = 'kecamatan';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function kelurahan()
    {
        return $this->hasMany(Kelurahan::class, 'kecamatan_id');
    }
    public function attribut()
    {
        return $this->belongsToMany(Attribut::class, 'attribut_kecamatan', 'kecamatan_id', 'attribut_id');
    }
}
