<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\User;
use App\Models\Client;
use App\Models\Auditlog;
use App\Models\Membership;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class MembershipmanagementController extends Controller
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
        $all_memberships = Membership::all();

        return View('membershipmanagement.show-membership')->with('all_memberships', $all_memberships);
    }


    public function create_membership()
    {
        return View('membershipmanagement.create-memberships');
    }

    public function post_create_membership(Request $request)
    {
        $image = $request->file('image');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/images');
        $image->move($destinationPath, $input['imagename']);

        $insert_membership = array(
                'membership_image' => $input['imagename'],
                'membership_name' => Input::get('mname'),
                'descrip' => Input::get('mdesc'),
                'total_usage' => Input::get('limited_usage'),
                'duration' => Input::get('duration'),
                'qty' => Input::get('times'),
                'validity' => Input::get('limited_validity'),
                'renewal' => Input::get('renewal'),
                'renewal_qty' => Input::get('renewal_times')
            );

        $insert_cli = Membership::insert($insert_membership);

        if($insert_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Membership plan added',
                'description' => Auth::user()->email.' Membership plan added',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('membership-management')->with('success', 'Membership plan addded successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }

    }


    public function edit_membership($membership_id = null)
    {
        $membership_det = Membership::where('id', '=', $membership_id)->first();
        return View('membershipmanagement.edit-memberships')->with('membership_det', $membership_det);
    }


    public function post_edit_membership(Request $request)
    {
        $image = $request->file('image');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/images');
        $image->move($destinationPath, $input['imagename']);
        
        
        $c_id = Membership::where('id', '=', Input::get('membership_id'))->first();
        if($input['imagename'])
        {
            $imagename = $input['imagename'];
        } else
        {
            $imagename = $c_id->membership_image;
        }

        $update_membership = array(
            'membership_image' => $input['imagename'],
            'membership_name' => Input::get('mname'),
            'descrip' => Input::get('mdesc'),
            'total_usage' => Input::get('limited_usage'),
            'duration' => Input::get('duration'),
            'qty' => Input::get('times'),
            'validity' => Input::get('limited_validity'),
            'renewal' => Input::get('renewal'),
            'renewal_qty' => Input::get('renewal_times')
        );


        $update_cli = Membership::where('id', '=', Input::get('membership_id'))->update($update_membership);

        if($update_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Membership plan updated',
                'description' => Auth::user()->email.' Membership plan updated',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('membership-management')->with('success', 'Membership updated successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }

    }

    public function post_delete_membership($membership_id = null)
    {

        $delete_cli = Membership::where('id', '=', $membership_id)->delete();

        if($delete_cli)
        {
            $audit_log = array(
                'user' => Auth::user()->email,
                'action' => 'Membership plan deleted',
                'description' => Auth::user()->email.' Membership plan deleted',
                'created_at' => date('Y-m-d H:i:s')
            );

            Auditlog::insert($audit_log);

            return redirect('membership-management')->with('success', 'Membership deleted successfully');
        } else
        {
            return back()->with('success', 'Something went wrong');
        }
    }
    
}
