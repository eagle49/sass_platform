@extends('layouts.app')
@section('template_title')
    Welcome {{ Auth::user()->name }}
@endsection

@section('head')
@endsection

@section('content')
					<!-- BEGIN: Subheader -->
					<div class="m-subheader ">
						<div class="d-flex align-items-center">
							<div class="mr-auto">
								<h3 class="m-subheader__title ">Home</h3>
							</div>
						</div>
					</div>

					<!-- END: Subheader -->
					<div class="m-content">
						<div class="row">
							<div class="col-md-12 col-lg-12">	
							@include('panels.welcome-panel')
							</div>
						</div>
					</div>
@endsection
