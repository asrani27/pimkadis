<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tagging extends Model
{
    use HasFactory;
    protected $table = 'tagging';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function attribut()
    {
        return $this->belongsTo(Attribut::class, 'attribut_id');
    }
}
