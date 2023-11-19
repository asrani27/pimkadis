<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataKelurahan extends Model
{
    use HasFactory;
    protected $table = 'attribut_kelurahan';
    protected $guarded = ['id'];
    public function attribut()
    {
        return $this->belongsTo(Attribut::class, 'attribut_id');
    }
}
