<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Api extends Model
{
    protected $table = 'api';
    protected $fillable = ['api_name', 'api_token', 'api_type', 'status'];
}
