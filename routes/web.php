<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
| Middleware options can be located in `app/Http/Kernel.php`
|
*/

// Homepage Route
Route::get('/', 'WelcomeController@welcome')->name('welcome');

// Authentication Routes
Auth::routes();

// Public Routes
Route::group(['middleware' => ['web', 'activity']], function () {

    // Activation Routes
    Route::get('/activate', ['as' => 'activate', 'uses' => 'Auth\ActivateController@initial']);

    Route::get('/activate/{token}', ['as' => 'authenticated.activate', 'uses' => 'Auth\ActivateController@activate']);
    Route::get('/activation', ['as' => 'authenticated.activation-resend', 'uses' => 'Auth\ActivateController@resend']);
    Route::get('/exceeded', ['as' => 'exceeded', 'uses' => 'Auth\ActivateController@exceeded']);

    // Socialite Register Routes
    Route::get('/social/redirect/{provider}', ['as' => 'social.redirect', 'uses' => 'Auth\SocialController@getSocialRedirect']);
    Route::get('/social/handle/{provider}', ['as' => 'social.handle', 'uses' => 'Auth\SocialController@getSocialHandle']);

    // Route to for user to reactivate their user deleted account.
    Route::get('/re-activate/{token}', ['as' => 'user.reactivate', 'uses' => 'RestoreUserController@userReActivate']);
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity']], function () {

    // Activation Routes
    Route::get('/activation-required', ['uses' => 'Auth\ActivateController@activationRequired'])->name('activation-required');
    Route::get('/logout', ['uses' => 'Auth\LoginController@logout'])->name('logout');
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'twostep']], function () {

    //  Homepage Route - Redirect based on user role is in controller.
    Route::get('/home', ['as' => 'public.home',   'uses' => 'UserController@index']);

    // Show users profile - viewable by other users.
    Route::get('profile/{username}', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@show',
    ]);
});

// Registered, activated, and is current user routes.
Route::group(['middleware' => ['auth', 'activated', 'currentUser', 'activity', 'twostep']], function () {

    // User Profile and Account Routes
    Route::resource(
        'profile',
        'ProfilesController', [
            'only' => [
                'show',
                'edit',
                'update',
                'create',
            ],
        ]
    );
    Route::put('profile/{username}/updateUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserAccount',
    ]);
    Route::put('profile/{username}/updateUserPassword', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserPassword',
    ]);
    Route::delete('profile/{username}/deleteUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@deleteUserAccount',
    ]);

    // Route to show user avatar
    Route::get('images/profile/{id}/avatar/{image}', [
        'uses' => 'ProfilesController@userProfileAvatar',
    ]);

    // Route to upload user avatar.
    Route::post('avatar/upload', ['as' => 'avatar.upload', 'uses' => 'ProfilesController@upload']);
});

// Registered, activated, and is admin routes.
Route::group(['middleware' => ['auth', 'activated', 'role:admin', 'activity', 'twostep']], function () {
    Route::resource('/users/deleted', 'SoftDeletesController', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('users', 'UsersManagementController', [
        'names' => [
            'index'   => 'users',
            'destroy' => 'user.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);
    Route::post('search-users', 'UsersManagementController@search')->name('search-users');

    Route::resource('themes', 'ThemesManagementController', [
        'names' => [
            'index'   => 'themes',
            'destroy' => 'themes.destroy',
        ],
    ]);

    Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
    Route::get('routes', 'AdminDetailsController@listRoutes');
    Route::get('active-users', 'AdminDetailsController@activeUsers');
    Route::get('client-management', 'ClientmanagementController@index');
    Route::get('client-management/create', 'ClientmanagementController@create_client');
    Route::get('client-management/edit/{client_id}', 'ClientmanagementController@edit_client');
    Route::get('client-management/delete/{client_id}', 'ClientmanagementController@post_delete_client');
    Route::post('client-management/post_create', 'ClientmanagementController@post_create_client');
    Route::post('client-management/post_edit', 'ClientmanagementController@post_edit_client');
    Route::post('client-management/post_edit/add_membership', 'ClientmanagementController@post_edit_add_membership');
    Route::get('client-management/post_edit/delete_membership/{client_id}/{quantity}/{id}', 'ClientmanagementController@post_edit_delete_membership');

    Route::get('currency-management', 'CurrencymanagementController@index');
    Route::get('currency-management/currency/{base_curr}/{rate}/{conv_curr}', 'CurrencymanagementController@add_curr');

    Route::get('account-management', 'AccountmanagementController@index');
    Route::get('account-management/accsetting/{client_id}', 'AccountmanagementController@account_setting');
    Route::post('account-management/post_account', 'AccountmanagementController@post_account_setting');

    Route::get('domain-management', 'DomainmanagementController@index');
    Route::get('domain-management/setting/{client_id}', 'DomainmanagementController@domain_setting');
    Route::post('domain-management/post_setting', 'DomainmanagementController@post_domain_setting');

    Route::get('membership-management', 'MembershipmanagementController@index');
    Route::get('membership-management/create', 'MembershipmanagementController@create_membership');
    Route::post('membership-management/post_create', 'MembershipmanagementController@post_create_membership');
    Route::get('membership-management/edit/{membership_id}', 'MembershipmanagementController@edit_membership');
    Route::post('membership-management/post_edit', 'MembershipmanagementController@post_edit_membership');
    Route::get('membership-management/delete/{membership_id}', 'MembershipmanagementController@post_delete_membership');

    Route::get('audit-log', 'AuditlogController@index');
});

Route::redirect('/php', '/phpinfo', 301);

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
