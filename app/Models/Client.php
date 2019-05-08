<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;

class Client extends Authenticatable
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'client_management';

    /**
     * The attributes that are not mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'company_unique_client_user_id',
        'company_name',
        'company_in',
        'company_address',
        'company_brief',
        'company_country',
        'company_state',
        'company_city',
        'company_zip',
        'company_email_address',
        'company_phone',
        'company_website',
        'company_currency',
        'company_timezone',
        'company_logo',
    ];

}
