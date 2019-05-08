<?php

namespace App\Http\Controllers;
use Input;
use App\Models\Profile;
use App\Models\User;
use App\Models\Client;
use App\Models\Auditlog;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;

class AuditlogController extends Controller
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
        $auditlogs = Auditlog::all();

        return View('auditlogs.audit-log')->with('auditlogs', $auditlogs);
    }

    
}
