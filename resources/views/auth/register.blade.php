@extends('layout.RegistrationAndLoginlayout')
@section('title')
  Create :: Laravel 5.1 - CRUD
@endsection
@section('content')
<div class="container">
  <div class="row centered-form">
    <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
      <div class="panel panel-default">
        <div class="panel-heading">
        <h3 class="panel-title">Create <small>rud</small></h3>
        </div>
        <div class="panel-body">
          {!! Form::open(array('route' => 'register.store')) !!}
            <div class="form-group">
             <input type="text" name="name" value="{{ old('name') }}" class="form-control input-sm" placeholder="Name" required>
            </div>

            <div class="form-group">
              <input type="email" name="email" value="{{ old('email') }}" class="form-control input-sm" placeholder="Email Address" required>
            </div>

            <div class="form-group">
              <input type="password" name="password" class="form-control input-sm" placeholder="Password" required>
            </div>

            <div class="form-group">
              <input type="submit" value="Register" class="btn btn-info btn-block">
            </div>
          {!! Form::close() !!}
        </div>
      </div>
    </div>
  </div>
</div>
@endsection