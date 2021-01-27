@extends('layouts.app')

@section('title-block')
Створити анкету
@endsection

@section('content')

<div id="container__add-anket">
    <h1 id="header__h1" class="container__entry-header">Створити анкету</h1>
    <form enctype="multipart/form-data" action="" method="post" class="ui form">
        @csrf
        <div class="field">
            <label id="add__anket-label" for="type">Тип анкети</label>
            <select id="type" class="ui fluid dropdown" name="type">
                @foreach($types as $type )
                <option value="{{$type->id}}">{{$type->name}}</option>
                @endforeach
            </select>
        </div>

        <div class="two fields">
            <div class="field">
                <label id="add__anket-label"for="type">Ім'я</label>
                <input id="profil_name" name="profil_name" class="ui input" maxlength="50">
            </div>
            <div class="field">
                <label id="add__anket-label" for="type">Вік</label>
                <input id="profil_age" name="age" class="ui input">
            </div>
            <div class="field">
                <label id="add__anket-label" for="type">Телефон</label>
                <input id="profil_tel" name="tel" class="ui input" placeholder="30508887766">
            </div>
        </div>

        <div class="field">
            <label id="add__anket-label" for="сity">Місто</label>
            <select id="сity" class="ui input" name="id_city">
                @foreach($cities as $city )
                <option value="{{$city->id}}">{{$city->name}}</option>
                @endforeach
            </select>
        </div>

        <div class="field">
            <label id="add__anket-label" for="address">Адреса: </label>
            <input id="address" name="address" class="ui input" placeholder="вулиця Пирогова, 23">
        </div>

        <div class="two fields">
            @for($i = 0; $i < 3; $i++) <div class="field">
                <label id="add__anket-label" for="metro{{$i}}">Метро</label>
                <select id="metro{{$i}}" class="ui input" name="id_metros[]">
                    <option value="0">Оберіть</option>
                    @foreach(App\Models\Metro::All() as $metro )
                    <option value="{{$metro->id}}">{{$metro->name}}</option>
                    @endforeach
                </select>
        </div>
        @endfor
</div>


<div class="field">
    <label id="add__anket-label">Про мене</label>
    <textarea name="about_me"></textarea>
</div>

<div class="two fileds">
    <div class="field">
        <label id="add__anket-label" for="education">Освіта</label>
        <select id="education" class="ui input" name="id_education">
            @foreach($educations as $education)
            <option value="{{$education->id}}">{{$education->name}}</option>
            @endforeach
        </select>
    </div>

    <div class="field">
        <label id="add__anket-label" for="experience">Досвід</label>
        <select id="experience" class="ui input" name="id_experience">
            @foreach($experiences as $experience )
            <option value="{{$experience->id}}">{{$experience->name}}</option>
            @endforeach
        </select>
    </div>
</div>

<div>
    <label id="add__anket-label" for="pris">Ціна</label>
</div>
<div class="two fields">
    <div class="field">
        <label for="pris">за годину</label>
        <input id="pris" class="ui input" name="price_1h_office" maxlength="50">
    </div>
    <div class="field">
        <label for="pris2">за дві години</label>
        <input id="pris2" class="ui input" name="price_2h_office" maxlength="50">
    </div>
</div>

<div>
    <label id="add__anket-label" for="pris">Ціна з виїздом до клієнта</label>
</div>
<div class="two fields">
    <div class="field">
        <label for="pris3">за годину</label>
        <input id="pris3" name="price_1h_challenge" class="ui input" maxlength="50">
    </div>
    <div class="field">
        <label for="pris4">за дві години</label>
        <input id="pris4" name="price_2h_challenge" class="ui input">
    </div>
</div>

<div class="field">
    <label id="add__anket-label">
        Виберіть Ваші послуги
    </label>
    @foreach($services->chunk(15) as $part_services)
    <div class="field">
        @foreach($part_services as $service)
        <div class="ui toggle checkbox">
            <div class="field">
                <input type="checkbox" name="services[]" value="{{$service->id}}">
                <label for="pris">{{$service->name}}</label>
            </div>
        </div>
        @endforeach
    </div>
    @endforeach
</div>



<div class="field">
    <label id="add__anket-label" for="photo">Зображення приміщення</label>
    <input multiple="multiple" name="photos[]" type="file" id="photos" accept="image/png, image/jpeg" />
</div>

<div id="container__entry-button" class="field">
    <button class="ui secondary basic button" type="submit">Створити</button>
</div>


</form>
</div>

@endsection
