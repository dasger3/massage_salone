@extends('layouts.app')

@section('title-block')
{{$order->id}}
@endsection

@section('content')
<div id="container__anket">
    <h1 class="container__entry-header">Інформація про прийом  № {{$order->anketa->id}} ({{$order->anketa->name}})</h1>
    <table class="ui celled table">
        <thead>
            <tr>
                <th>Пункти</th>
                <th>Інформація про прийом</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td data-label="Name">Ім'я спеціаліста</td>
                <td data-label="Age">{{$order->anketa->name}}</td>
            </tr>

            <tr>
                <td data-label="Name">Телефон</td>
                <td data-label="Age">+{{$order->anketa->tel}}</td>
            </tr>

            <tr>
                <td data-label="Name">Місто</td>
                <td data-label="Age">{{$order->anketa->city->name}}</td>
            </tr>

            <tr>
                <td data-label="Name">Метро</td>
                <td data-label="Age">
                    @foreach($order->anketa->metros as $m)
                    {{$m->name}}
                    @endforeach
                </td>
            </tr>

            <tr>
                <td data-label="Name">Години прийому</td>
                <td data-label="Age">
                   
                    {{$order->timetable->begin}}-{{$order->timetable->end}}
                  
                </td>
            </tr>

            <tr>
                <td data-label="Name">Вартість прийому</td>
                <td data-label="Age">{{$order->anketa->price_1h_office}} грн</td>
            </tr>

            <tr>
                <td data-label="Name">Послуги</td>
                <td data-label="Age">
                    <div class="ui celled list">
                        @foreach($order->anketa->services as $service)
                        <div class="item">{{$service->name}}</div>
                        @endforeach
                    </div>

                </td>
            </tr>

        </tbody>
    </table>

</div>


@endsection
