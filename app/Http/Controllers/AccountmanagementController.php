<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\User;
use App\Models\Client;
use App\Models\Account;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class AccountmanagementController extends Controller
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
        $all_clients = Client::all();
        $get_all_client_balance = array();
        if($all_clients)
        {
            foreach ($all_clients as $key => $all_client) {
                $get_balances = Account::where('client_id', '=', $all_client->id)->get();
                $sumdeposit = 0;
                if($get_balances)
                {
                    foreach ($get_balances as $get_balance) 
                    {
                        $sumdeposit += $get_balance->amount;
                    }
                }
                $get_all_client_balance[$all_client->id] = $all_client;
                $get_all_client_balance[$all_client->id]['amount'] = $sumdeposit;
            }
        }
       // echo "<pre>";print_r($get_all_client_balance);die();

        return View('accountmanagement.show-account')->with('get_all_client_balance', $get_all_client_balance);
    }

    public function account_setting($client_id = null)
    {

        return View('accountmanagement.edit-account')->with('client_id', $client_id);
    }

    public function post_account_setting()
    {
        if(Input::get('action') == 'withdrawl')
        {
            $allocation = '-'.Input::get('amount');
        } else
        {
            $allocation = Input::get('amount');
        }

        $account_transaction = array(
                'client_id' => Input::get('client_id'),
                'allocation' => Input::get('action'),
                'amount' => $allocation,
                'created_at' => date('Y-m-d H:i:s')
            );

        $trans = Account::insert($account_transaction);

        if($trans)
        {
            return redirect('account-management')->with('success', 'Transaction successful');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }
    }

}
