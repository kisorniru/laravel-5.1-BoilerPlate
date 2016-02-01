@extends('layout.RegistrationAndLoginlayout')
@section('title')
  Read :: Laravel 5.1 - CRUD
@endsection
@section('content')
<div class="container">
    <div style="height:50px;"  class="row custyle">
      <center><h3 class="panel-title"><small>c</small> Read <small>ud</small></h3></center>
      <a class='btn btn-info btn-xs' href="{{url('register')}}"><span class="glyphicon glyphicon-circle-arrow-left"></span> Back</a>
      <table class="table table-striped custab">
              <thead>
                <tr>
                    <th class="text-center">ID</th>
                    <th class="text-center">Name</th>
                    <th class="text-center">Email</th>
                    <th class="text-center" colspan="2">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach($allData as $data)
                <tr>
                    <td class="text-center">{{ $data->id }}</td>
                    <td class="text-center">{{ $data->name }}</td>
                    <td class="text-center">{{ $data->email }}</td>
                    <td class="text-center">
                      <a class='btn btn-info btn-xs' href="{{route('viewAllData.edit',$data->id)}}"><span class="glyphicon glyphicon-edit"></span>Edit</a>
                    </td>
                    <td class="text-center">
                      {!! Form::open(['route'=>['viewAllData.destroy', $data->id], 'method'=>'DELETE', 'class'=>'form-inline']) !!}
                        <button type="submit" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove">Delete</span></button>
                      {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
              </tbody>
      </table>
      <center>{!! $allData->render() !!};</center>
    </div>
</div>
@endsection