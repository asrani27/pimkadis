<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttributKelurahan extends Model
{
    use HasFactory;
    protected $table = 'attribut_kelurahan';
    protected $guarded = ['id'];
    public function attribut()
    {
        return $this->belongsTo(Attribut::class, 'attribut_id');
    }
    public function kelurahan()
    {
        return $this->belongsTo(Kelurahan::class, 'kelurahan_id');
    }
}
