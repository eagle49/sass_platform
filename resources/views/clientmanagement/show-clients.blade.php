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
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
@if(session()->has('success'))
    <div class="alert alert-success">
        {{ session()->get('success') }}
    </div>
@endif
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span id="card_title">
                                Showing all clients
                            </span>
                            <div class="btn-group pull-right btn-group-xs">
                                <a class="nav-link m-tabs__link active" href="<?php echo url('/'); ?>/client-management/create">
                                        Add
                                    </a>
                            </div>   
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">
                                <thead class="thead">
                                    <tr>
                                        <th></th>
                                        <th>Company name</th>
                                        <th>Company email</th>
                                        <th>Company phone</th>
                                        <th>Company currency</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="users_table">
                                    @if($client_lists)
                                        @foreach($client_lists as $client_list)
                                            <tr>
                                                <td><img src="{{url('/')}}/images/{{$client_list->company_logo}}" width="50" height="50"></td>
                                                <td>{{$client_list->company_name}}</td>
                                                <td>{{$client_list->company_email_address}}</td>
                                                <td>{{$client_list->company_phone}}</td>
                                                <td>{{$client_list->company_currency}}</td>
                                                <td>
                                                    <a href="{{url('/client-management/edit')}}/{{$client_list->id}}" data-toggle="tooltip" title="Edit">Edit</a> | 
                                                    <a href="{{url('/client-management/delete')}}/{{$client_list->id}}" data-toggle="tooltip" title="Delete">Delete</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection