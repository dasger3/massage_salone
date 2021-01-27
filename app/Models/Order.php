<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{ 

    public function anketa()
    {
        return $this->belongsTo('App\Models\Anketa');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    // public function timetables()
    // {
    //     return $this->belongsToMany('App\Models\Timetable');
    // }

     public function timetable()
    {
        return $this->belongsTo('App\Models\Timetable');
    }

}
