<?php
namespace App\Http\Controllers;


use App\Models\Anketa;
use App\Models\Education;
use App\Models\Experience;
use App\Models\Metro;
use App\Models\Photo;
use App\Models\Type;
use App\Models\City;
use App\Models\Service;
use App\Models\Order;
use App\Models\Timetable;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;

class OrderController extends Controller{

    public function index(Request $request) {
        return view('orders_index', ['orders' => Auth::user()->orders]);
    }


    public function show($id){
        return view('order', ['order' => Order::find($id)]);
    }

   	public function create($anketa_id){
        return view('orders_create', [
        	'anketa' => Anketa::find($anketa_id),
        	'timetables' => Timetable::all()
        ]);
    }



    public function store(Request $request){


        $validator = $request->validate([
           'date' => 'required',
           'timetable' => 'required'
        ]); 

        $order = new Order();        
        $order->date = $request->input('date');

        $anketa = Anketa::find($request->input('anketa_id'));
        $order->anketa()->associate($anketa);

        $user=Auth::user();
        $order->user()->associate($user);       

        $timetable = Timetable::find($request->input('timetable'));
        $order->timetable()->associate($timetable);

        // $order->save();
     


        // foreach ($request->timetables as $timetable_id){           
        //     $timetable = Timetable::find($timetable_id);
        //     $timetable->orders()->attach($order->id);          
        // }

        $order->save();
        return redirect()->route('home');
    }


   
}
