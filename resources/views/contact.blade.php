@extends('layouts.app')

@section('title-block','Контактная страница')

@section('content')
    <h1 class="title">Contact page</h1>


    {{--Обращаюсь не по конкретным URL-адресам, а по названиям различных обработчиков URL-адресов--}}
    <form action="{{ route('contact-form') }}" method="post">

        {{--НЕобходимо в форму добавить защищенный ключ--}}
        @csrf

        <div class="form-group">
            <label for="name">Enter your name</label>
            <input type="text" name="name" id="name" placeholder="Enter your name" class="form-control">
        </div>

        <div class="form-group">
            <label for="email">Enter your email</label>
            <input type="text" name="email" id="email" placeholder="Enter your email" class="form-control">
        </div>

        <div class="form-group">
            <label for="subject">Enter your subject</label>
            <input type="text" name="subject" id="subject" placeholder="Enter your subject" class="form-control">
        </div>

        <div class="form-group">
            <label for="message">Enter your message</label>
            <textarea name="message" id="message" class="form-control" placeholder="Enter your message"></textarea>
        </div>

        <button type="submit" class="btn btn-success">Send</button>
    </form>
@endsection
