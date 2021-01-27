@extends('layouts.app')

{{--@section('title-block','')--}}

@section('title-block')
Мої анкети
@endsection

@section('content')

<h1 id="header__h1" class="container__entry-header">Мої анкети</h1>
<div id="cards__list" class="ui link cards">
    @foreach($anketas as $anketa)
    @if($anketa->photo==null)
    @continue;
    @endif


    <a href="{{route('anketa',$anketa->id)}}" id="cards__list-item-edit" class="card">
        <img src="{{ asset('storage/images/'.$anketa->photo->path) }}" class="image card__image" alt="salon">
        <div class="content">
            <div class="header">{{$anketa->name}}</div>
            <div class="meta">
                <b>Місто: {{$anketa->city->name}}</b>

            </div>
            <div class="description">
                <span class="metro_list">Метро:
                    @foreach($anketa->metros as $metro)
                    {{$metro->name}},
                    @endforeach
                </span>
            </div>
            <div class="description">
                Ціна: {{$anketa->price_1h_challenge}} грн за годину
            </div>    
        </div>
    </a>

     
    @endforeach
</div>

@endsection
