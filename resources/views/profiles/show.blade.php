@extends('layouts.app')

@section('template_title')
	{{ $user->name }}'s Profile
@endsection

@section('template_fastload_css')

	#map-canvas{
		min-height: 300px;
		height: 100%;
		width: 100%;
	}

@endsection

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-3" id="mySidenav">
        			{{-- Left Side Of Navbar --}}
        			<div id="m_ver_menu" class="m-aside-menu  m-aside-menu--skin-dark m-aside-menu--submenu-skin-dark " m-menu-vertical="1" m-menu-scrollable="0" m-menu-dropdown-timeout="500">
            <ul class="navbar-nav mr-auto m-menu__nav">
                @role('admin')
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">
                        <!-- <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {!! trans('titles.adminDropdownNav') !!}
                        </a> -->
                        <!-- <div class="dropdown-menu"> -->

                            <a class="m-menu__link dropdown-item {{ Request::is('users', 'users/' . Auth::user()->id, 'users/' . Auth::user()->id . '/edit') ? 'active' : null }}" href="{{ url('/users') }}"> 
                            <span class="m-menu__item-here"></span> <i class="m-menu__link-icon flaticon-layers"></i>
                                <span class="m-menu__link-text">{!! trans('titles.adminUserList') !!}</span>
                            </a>
                    </li>
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('users/create') ? 'active' : null }}" href="{{ url('/users/create') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminNewUser') !!}</span>
                            </a>
                    </li>
                    <!-- <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('themes','themes/create') ? 'active' : null }}" href="{{ url('/themes') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminThemesList') !!}</span>
                            </a>
                    </li> -->
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('logs') ? 'active' : null }}" href="{{ url('/logs') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminLogs') !!}</span>
                            </a>
                    </li>
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('activity') ? 'active' : null }}" href="{{ url('/activity') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminActivity') !!}</span>
                            </a>
                    </li>
                   <!--  <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('phpinfo') ? 'active' : null }}" href="{{ url('/phpinfo') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminPHP') !!}</span>
                            </a>
                    </li>
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('routes') ? 'active' : null }}" href="{{ url('/routes') }}">
                                <span class="m-menu__link-text">{!! trans('titles.adminRoutes') !!}</span>
                            </a>
                    </li>
                    <li class="nav-item dropdown m-menu__section m-menu__section--first">        
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('active-users') ? 'active' : null }}" href="{{ url('/active-users') }}">
                                <span class="m-menu__link-text">{!! trans('titles.activeUsers') !!}</span>
                            </a>
  
                    </li> -->
                @endrole
            </ul>
        	</div></div>
            <div class="col-2"></div>
			<!-- <div class="col-12 col-md-10 offset-md-1 col-lg-8 offset-lg-2"> -->
			<div class="col-9">
				<div class="card">
					<div class="card-header">

						{{ trans('profile.showProfileTitle',['username' => $user->name]) }}

					</div>
					<div class="card-body">

    					<img src="@if ($user->profile->avatar_status == 1) {{ $user->profile->avatar }} @else {{ Gravatar::get($user->email) }} @endif" alt="{{ $user->name }}" class="user-avatar">

						<dl class="user-info">

							<dt>
								{{ trans('profile.showProfileUsername') }}
							</dt>
							<dd>
								{{ $user->name }}
							</dd>

							<dt>
								{{ trans('profile.showProfileFirstName') }}
							</dt>
							<dd>
								{{ $user->first_name }}
							</dd>

							@if ($user->last_name)
								<dt>
									{{ trans('profile.showProfileLastName') }}
								</dt>
								<dd>
									{{ $user->last_name }}
								</dd>
							@endif

							<dt>
								{{ trans('profile.showProfileEmail') }}
							</dt>
							<dd>
								{{ $user->email }}
							</dd>

							@if ($user->profile)

								@if ($user->profile->theme_id)
									<dt>
										{{ trans('profile.showProfileTheme') }}
									</dt>
									<dd>
										{{ $currentTheme->name }}
									</dd>
								@endif

								@if ($user->profile->location)
									<dt>
										{{ trans('profile.showProfileLocation') }}
									</dt>
									<dd>
										{{ $user->profile->location }} <br />

										@if(config('settings.googleMapsAPIStatus'))
											Latitude: <span id="latitude"></span> / Longitude: <span id="longitude"></span> <br />

											<div id="map-canvas"></div>
										@endif
									</dd>
								@endif

								@if ($user->profile->bio)
									<dt>
										{{ trans('profile.showProfileBio') }}
									</dt>
									<dd>
										{{ $user->profile->bio }}
									</dd>
								@endif

								@if ($user->profile->twitter_username)
									<dt>
										{{ trans('profile.showProfileTwitterUsername') }}
									</dt>
									<dd>
										{!! HTML::link('https://twitter.com/'.$user->profile->twitter_username, $user->profile->twitter_username, array('class' => 'twitter-link', 'target' => '_blank')) !!}
									</dd>
								@endif

								@if ($user->profile->github_username)
									<dt>
										{{ trans('profile.showProfileGitHubUsername') }}
									</dt>
									<dd>
										{!! HTML::link('https://github.com/'.$user->profile->github_username, $user->profile->github_username, array('class' => 'github-link', 'target' => '_blank')) !!}
									</dd>
								@endif
							@endif

						</dl>

						@if ($user->profile)
							@if (Auth::user()->id == $user->id)

								{!! HTML::icon_link(URL::to('/profile/'.Auth::user()->name.'/edit'), 'fa fa-fw fa-cog', trans('titles.editProfile'), array('class' => 'btn btn-small btn-info btn-block')) !!}

							@endif
						@else

							<p>{{ trans('profile.noProfileYet') }}</p>
							{!! HTML::icon_link(URL::to('/profile/'.Auth::user()->name.'/edit'), 'fa fa-fw fa-plus ', trans('titles.createProfile'), array('class' => 'btn btn-small btn-info btn-block')) !!}

						@endif

					</div>
				</div>
			</div>
		</div>
	</div>
@endsection

@section('footer_scripts')

	@if(config('settings.googleMapsAPIStatus'))
		@include('scripts.google-maps-geocode-and-map')
	@endif

@endsection
