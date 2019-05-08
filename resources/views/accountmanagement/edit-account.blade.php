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

                        <form method="POST" action="{{url('account-management/post_account')}}" role="form" class="needs-validation" enctype='multipart/form-data'>
                        <input type="hidden" name="client_id" value="{{$client_id}}">
                            {!! csrf_field() !!}
                            <div class="form-group has-feedback row ">
                                <label for="email" class="col-md-3 control-label">Action</label>
                                <div class="col-md-5">
                                    <div class="input-group">
                                    <select name="action" class="form-control">
                                        <option value="deposit">Deposit</option>
                                        <option value="withdrawl">Withdrawl</option>
                                    </select>
                                    </div>
                                                                    </div>
                            </div>

                            <div class="form-group has-feedback row ">
                                <label for="email" class="col-md-3 control-label">Amount</label>
                                <div class="col-md-5">
                                    <div class="input-group">
                                    <input class="form-control" name="amount" type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group has-feedback row">
                                <div class="col-md-5">
                                    <div class="input-group">
                                        <input class="btn" type="submit" value="submit">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection