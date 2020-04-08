<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class messages extends Model
{
    public $timestamps = false;
    protected $fillable = ['name', 'contact_no', 'description', 'status', 'created_at'];
}
