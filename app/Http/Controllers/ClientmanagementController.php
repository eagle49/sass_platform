<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\Auditlog;
use App\Models\User;
use App\Models\Client;
use App\Models\Membership;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class ClientmanagementController extends Controller
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
        $client_lists = Client::all();
        return View('clientmanagement.show-clients')->with('client_lists', $client_lists);
    }

    public function create_client()
    {
        
        return View('clientmanagement.create-clients');
    }


    public function edit_client($client_id = null)
    {
        $company_det = Client::where('id', '=', $client_id)->first();
        $membershipplans = Membership::get();

        $membership_plans = $company_det->membership_assign;
        $all_plans = explode(',', $membership_plans);
        $nly_plans = [];
        if(!empty($membership_plans))
        {
            if($all_plans)
            {
                foreach ($all_plans as $key => $value) {
                    $plans = explode('|', $value);
                    $membership_plans = Membership::where('id', '=', $plans[0])->first();

                    $nly_plans[$key]['id'] = $plans[0];
                    $nly_plans[$key]['membership_plans'] = (isset($membership_plans))?$membership_plans->membership_name:'';
                    $nly_plans[$key]['quantity'] = $plans[1];
                }
            }
        } else
        {
            $nly_plans = '';
        }

        //echo "<pre>";print_r($nly_plans);die();

        return View('clientmanagement.edit-clients')->with('company_det', $company_det)->with('membershipplans', $membershipplans)->with('nly_plans', $nly_plans);
    }

     public function post_create_client(Request $request)
    {
        $image = $request->file('image');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/images');
        $image->move($destinationPath, $input['imagename']);

        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

        $pin = mt_rand(1000000, 9999999)
            . mt_rand(1000000, 9999999)
            . $characters[rand(0, strlen($characters) - 1)];

        // shuffle the result
        $string_rand = str_shuffle($pin);

        $insert_company = array(
                'company_unique_client_user_id' => $string_rand,
                'company_name' => Input::get('cname'),
                'company_in' => Input::get('cin'),
                'company_address' => Input::get('company_addr'),
                'company_brief' => Input::get('company_brief'),
                'company_country' => Input::get('country'),
                'company_state' => Input::get('state'),
                'company_city' => Input::get('city'),
                'company_zip' => Input::get('zip'),
                'company_email_address' => Input::get('cemail'),
                'company_phone' => Input::get('company_phone'),
                'company_website' => Input::get('cwebsite'),
                'company_currency' => Input::get('currency'),
                'company_timezone' => Input::get('timezone'),
                'company_logo' => $input['imagename'],
                'membership_assign' => '0|0000',
                'created_at' => date('Y-m-d H:i:s')
            );


        $insert_cli = Client::insert($insert_company);

        if($insert_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Company added',
                'description' => Auth::user()->email.' added company in client management',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('client-management')->with('success', 'Company addded successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }

    }

    public function post_edit_client(Request $request)
    {
        $image = $request->file('image');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/images');
        $image->move($destinationPath, $input['imagename']);
        
        
        $c_id = Client::where('id', '=', Input::get('company_id'))->first();
        if($input['imagename'])
        {
            $imagename = $input['imagename'];
        } else
        {
            $imagename = $c_id->company_logo;
        }

        $update_company = array(
            'company_name' => Input::get('cname'),
            'company_in' => Input::get('cin'),
            'company_address' => Input::get('company_addr'),
            'company_brief' => Input::get('company_brief'),
            'company_country' => Input::get('country'),
            'company_state' => Input::get('state'),
            'company_city' => Input::get('city'),
            'company_zip' => Input::get('zip'),
            'company_email_address' => Input::get('cemail'),
            'company_phone' => Input::get('company_phone'),
            'company_website' => Input::get('cwebsite'),
            'company_currency' => Input::get('currency'),
            'company_timezone' => Input::get('timezone'),
            'company_logo' => $imagename,
            'updated_at' => date('Y-m-d H:i:s')
        );


        $update_cli = Client::where('id', '=', Input::get('company_id'))->update($update_company);

        if($update_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Company updated',
                'description' => Auth::user()->email.' company updated in client management',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('client-management')->with('success', 'Company updated successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }

    }


    public function post_delete_client($client_id = null)
    {

        $delete_cli = Client::where('id', '=', $client_id)->delete();

        if($delete_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Company deleted',
                'description' => Auth::user()->email.' company deleted in client management',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('client-management')->with('success', 'Company deleted successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }
    }


    public function post_edit_add_membership()
    {
        $client_id = Input::get('client_id');

        $company_det = Client::where('id', '=', $client_id)->first();
        $membership_plans = $company_det->membership_assign;

        $all_plans = explode(',', $membership_plans);
        $nly_plans = [];
        if($all_plans)
        {
            foreach($all_plans as $all_plan)
            {
                $nly_plans[$all_plan[0]] = explode('|', $all_plan);
            }
        }

        //echo "<pre>";print_r($nly_plans);die();

        $membership_id = Input::get('membership_plan');
        $no_quantity = (Input::get('no_quantity') != '')?Input::get('no_quantity'):'0';

        if(!array_key_exists($membership_id, $nly_plans))
        {

            if(!empty($membership_plans))
            {
                $add_membership = array(
                    'membership_assign' => $membership_plans.','.$membership_id.'|'.$no_quantity
                );
            } else
            {
                $add_membership = array(
                    'membership_assign' => $membership_id.'|'.$no_quantity
                );
            }

            $up_memebership = Client::where('id', '=', $client_id)->update($add_membership);
            if($up_memebership)
            {
                $audit_log = array(
                    'user' => Auth::user()->email,
                    'action' => 'Membership added',
                    'description' => Auth::user()->email.' Membership added in client management inside company details',
                    'created_at' => date('Y-m-d H:i:s')
                );

                Auditlog::insert($audit_log);

                return redirect('client-management/edit/'.$client_id)->with('success', 'Membership added successfully');
            } else
            {
                return back()->with('success', 'Something went wrong');
            }
        } else
        {
            return redirect('client-management/edit/'.$client_id)->with('success', 'Membership already added');
        }
    }

    public function post_edit_delete_membership($client_id = null, $quantity = null, $id = null)
    {

        $delete_membership = Client::where('id', '=', $client_id)->first();
        $membership_plans = $delete_membership->membership_assign;

        $exec_plan = $id.'|'.$quantity;

        $act_data = str_replace($exec_plan, '', $membership_plans);
        $t_act_data = trim($act_data, ',');

        $member_delete_up = array(
                'membership_assign' => $t_act_data
            );
        
        $update_cli = Client::where('id', '=', $client_id)->update($member_delete_up);

        if($update_cli)
        {
            $audit_log = array(
                    'user' => Auth::user()->email,
                    'action' => 'Membership deleted',
                    'description' => Auth::user()->email.' Membership deleted in client management inside company details',
                    'created_at' => date('Y-m-d H:i:s')
                );

                Auditlog::insert($audit_log);

            return redirect('client-managementclient-management/edit/'.$client_id)->with('success', 'Membership deleted successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }
    }

    
}
