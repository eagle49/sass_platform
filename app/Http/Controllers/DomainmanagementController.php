<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\User;
use App\Models\Client;
use App\Models\Auditlog;
use App\Models\Domain;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class DomainmanagementController extends Controller
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

        return View('domainmanagement.show-domain')->with('all_clients', $all_clients);
    }


    public function domain_setting($client_id = null)
    {
        $gte_domain_setting = Domain::where('client_id', '=', $client_id)->first();

        return View('domainmanagement.domain-setting')->with('client_id', $client_id)->with('gte_domain_setting', $gte_domain_setting);
    }

    public function post_domain_setting()
    {
        $all_domains = Domain::all();
        $exist_ids = [];
        if($all_domains)
        {
            foreach ($all_domains as $key => $value) {
                $exist_ids[$value->client_id] = $value;
            }
        }

        if(Input::get('has_domain') == '1')
        {
            $domain_name = Input::get('client_domain');
        } else
        {
            $domain_name = Input::get('client_wants_domain');

            /*if (!is_dir('var/www/'.$domain_name)) {
                mkdir('var/www/'.$domain_name, 0777, true);
                mkdir('var/www/'.$domain_name.'/html', 0777, true);
            }*/

            
        }
 
        $insert_company = array(
            'has_domain' => Input::get('has_domain'),
            'domain_name' => $domain_name,
            'client_id' => Input::get('client_id'),
            'created_at' => date('Y-m-d H:i:s')
        );

        //echo "<pre>";print_r($exist_ids);die();

        if(!array_key_exists(Input::get('client_id'), $exist_ids))
        {
            $insert = Domain::insert($insert_company);
        } else
        {
            $insert = Domain::where('client_id', '=', Input::get('client_id'))->update($insert_company);
        }

        if($insert)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Domain',
                'description' => Auth::user()->email.' domain added in domain setting successfully',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('domain-management/setting/'.Input::get('client_id'))->with('success', 'Domain details updated successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }

    }
    
}
