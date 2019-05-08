<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\User;
use App\Models\Currency;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class CurrencymanagementController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $all_currs = Currency::all();

        return View('currencymanagement.show-currency')->with('all_currs', $all_currs);
    }

   public function add_curr($base_curr = null, $rate = null, $conv_curr = null)
    {
        $all_currs = Currency::all();

        $curr_exists = array();
        if($all_currs){
            foreach($all_currs as $all_curr){
                $curr_exists[$all_curr->conv_curr] = $all_curr->conv_curr;
            }
        }

        if(!array_key_exists($conv_curr, $curr_exists))
        {
            $currency = array(
                    'base_curr' => $base_curr,
                    'conv_curr' => $conv_curr,
                    'rate' => $rate,
                    'created_at' => date('Y-m-d H:i:')
                );

            $update_currency = Currency::insert($currency);
        } else
        {
            $currency_update = array(
                    'rate' => $rate,
                    'created_at' => date('Y-m-d H:i:')
                );

            $update_currency = Currency::where('conv_curr', '=' ,$conv_curr)->update($currency_update);
        }

    
        return View('currencymanagement.get-all-currency')->with('all_currs', $all_currs);

    }

    
}
