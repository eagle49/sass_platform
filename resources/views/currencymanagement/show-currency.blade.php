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
                                Currency management
                            </span>   
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive users-table">
                            <div class="col-sm-6">
                                <label class="form-control">Base Currency</label>
                                <div class="input-group">
                                    <select class="form-control" name="base_curr">
                                        <option value="GBP">Great British Pound (GBP)</option>
                                    </select>
                                </div>
                                <label class="form-control">Currencies to be used in wallet</label>
                                <div class="input-group">
                                <select class="form-control dynamic_curr" name="dynamic_curr">
                                    <option value="USD">America (United States) Dollars – USD</option>
                                    <option value="AUD">Australia Dollars – AUD</option>
                                    <option value="BRL">Brazil Reais – BRL</option>
                                    <option value="BGN">Bulgaria Leva – BGN</option>
                                    <option value="CAD">Canada Dollars – CAD</option>
                                    <option value="CNY">China Yuan Renminbi – CNY</option>
                                    <option value="HRK">Croatia Kuna – HRK</option>
                                    <option value="EUR">Euro – EUR</option>
                                    <option value="INR">India Rupees – INR</option>
                                    <option value="JPY">Japan Yen – JPY</option>
                                    <option value="MXN">Mexico Pesos – MXN</option>
                                    <option value="NZD">New Zealand Dollars – NZD</option>
                                    <option value="SGD">Singapore Dollars – SGD</option>
                                    <option value="GBP">United Kingdom Pounds – GBP</option>
                                    <option value="USD">United States Dollars – USD</option>
                                </select>
                                </div>
                                <a href="javascript:void(0);" class="btn add_curr">Add</a>
                            </div>    
                            <div class="col-sm-6">
                                <table class="table table-striped table-sm data-table">
                                    <thead class="thead">
                                        <tr>
                                            <th>Base</th>
                                            <th>Currency</th>
                                            <th>Rate</th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody id="currencies_table">
                                    <div class="loader" style="display: none;"></div>
                                        @if($all_currs)
                                            @foreach($all_currs as $all_curr)
                                                <tr>
                                                    <td>{{$all_curr->base_curr}}</td>
                                                    <td>{{$all_curr->conv_curr}}</td>
                                                    <td>{{$all_curr->rate}}</td>
                                                    <td>{{$all_curr->created_at}}</td>
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
    </div>


@endsection