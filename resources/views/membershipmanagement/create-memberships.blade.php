@extends('layouts.app')

@section('template_linked_css')

    <style type="text/css" media="screen">
        .users-table {
            border: 0;
        }
        .users-table tr td:first-child {
            padding-left: 15px;
        }
        .users-table tr td:last-child {
            padding-right: 15px;
        }
        .users-table.table-responsive,
        .users-table.table-responsive table {
            margin-bottom: 0;
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
                <div class="col-lg-10 offset-lg-1">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            Create New membership plan
                            <div class="pull-right">
                                <a href="<?php echo url('/'); ?>/membership-management" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to users">
                                    <i class="fa fa-fw fa-reply-all" aria-hidden="true"></i>
                                    <span class="hidden-sm hidden-xs">Back to </span><span class="hidden-xs">Membership</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{url('membership-management/post_create')}}" role="form" class="needs-validation" enctype='multipart/form-data'>

                            {!! csrf_field() !!}
                            <div class="form-group has-feedback row ">
                                <label for="email" class="col-md-3 control-label">Membership logo</label>
                                <div class="col-md-9">
                                    <div class="input-group">
                                        {!! Form::file('image', array('class' => 'image')) !!}
                                        <div class="input-group-append">
                                            <label for="email" class="input-group-text">
                                                <i class="fa fa-fw fa-envelope" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                    </div>
                                                                    </div>
                            </div>

                            <div class="form-group has-feedback row ">
                                <label for="email" class="col-md-3 control-label">Membership name</label>
                                <div class="col-md-9">
                                    <div class="input-group">
                                        <input class="form-control" name="mname" type="text">
                                        <div class="input-group-append">
                                            <label for="email" class="input-group-text">
                                                <i class="fa fa-fw fa-envelope" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                    </div>
                                                                    </div>
                            </div>

                            <div class="form-group has-feedback row ">
                                <label for="name" class="col-md-3 control-label">Membership description</label>
                                <div class="col-md-9">
                                    <div class="input-group">
                                        <input id="name" class="form-control" name="mdesc" type="text">
                                        <div class="input-group-append">
                                            <label class="input-group-text" for="name">
                                                <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                    </div>
                                                                    </div>
                            </div>

                            <div class="form-group has-feedback row ">
                                <input type="radio" name="limited_usage" class="limited_usage" value="1">
                                <label for="first_name" class="col-md-3 control-label">Limited usage</label>


                                <input type="radio" name="limited_usage" class="limited_usage" value="0">
                                <label for="first_name" class="col-md-3 control-label">unlimited usage</label>
                                <div class="col-md-9">
                                    <div class="input-group unlimited_usage">
                                        <select name="duration" class="form-control">
                                            <option value="monthly">Monthly</option>
                                            <option value="yearly">Yearly</option>
                                        </select>

                                        <input type="number" name="times" class="form-control"> Times
                                        <div class="input-group-append">
                                            <label class="input-group-text" for="first_name">
                                                <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                    </div>
                                                                    </div>
                            </div>

                            <div class="form-group has-feedback row ">
                                <input type="radio" name="limited_validity" class="limited_validity" value="1">
                                <label for="first_name" class="col-md-3 control-label">Limited validity</label>


                                <input type="radio" name="limited_validity" class="limited_validity" value="0">
                                <label for="first_name" class="col-md-3 control-label">unlimited validity</label>
                                <div class="col-md-9">
                                    <div class="input-group unlimited_validity">
                                        <select name="renewal" class="form-control">
                                            <option value="month">By month</option>
                                            <option value="year">By year</option>
                                        </select>

                                        <input type="number" name="renewal_times" class="form-control"> Times
                                        <div class="input-group-append">
                                            <label class="input-group-text" for="last_name">
                                                <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                    </div>
                                                                    </div>
                            </div>

                            
                            <button class="btn btn-success margin-bottom-1 mb-1 float-right" type="submit">Create New membership</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection