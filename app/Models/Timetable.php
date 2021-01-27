<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Timetable extends Model
{
    
    public function anketa()
    {
        return $this->belongsTo('App\Models\Anketa');
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    // public function orders()
    // {
    //     return $this->belongsToMany('App\Models\Order');
    // }

    public function orders()
    {
        return $this->hasMany('App\Models\Order');
    }



}
