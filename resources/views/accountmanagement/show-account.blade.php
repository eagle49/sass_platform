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
    <style>
.loader {
  border: 1px solid #f3f3f3;
  border-radius: 50%;
  border-top: 5px solid #3498db;
  width: 50px;
  height: 50px;
  -webkit-animation: spin 2s linear infinite; /* Safari */
  animation: spin 2s linear infinite;
}

/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
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
                                Account management
                            </span>   
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
                                        <th>Company currency</th>
                                        <th>Balance</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="users_table">
                                    @if($get_all_client_balance)
                                        @foreach($get_all_client_balance as $all_client)
                                            <tr>
                                                <td><img src="{{url('/')}}/images/{{$all_client->company_logo}}" width="50" height="50"></td>
                                                <td>{{$all_client->company_name}}</td>
                                                <td>{{$all_client->company_email_address}}</td>
                                                <td>{{$all_client->company_currency}}</td>
                                                <td>{{$all_client->amount}}</td>
                                                <td>
                                                    <a href="{{url('/account-management/accsetting')}}/{{$all_client->id}}" data-toggle="tooltip" title="Edit">Edit</a>
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