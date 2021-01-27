@extends('layouts.app')

@section('title-block','Модельная страница')

@section('content')
    <h1 class="title">Страница сообщений</h1>
    <div class="alert alert-info">
        <h3> {{ $data['user']  }} </h3>
        <p> {{ $data['message'] }} </p>
        <p> <small> {{ $data['date']  }} </small></p>


    </div>
@endsection
