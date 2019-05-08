<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;

class Auditlog extends Authenticatable
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'log';

    /**
     * The attributes that are not mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];


}
