{{--@if ($errors->any())--}}
{{--    <div class="alert alert-danger mt-3" role="alert">--}}
{{--        {{$errors->first()}}--}}
{{--    </div>--}}
{{--@endif--}}

@if(session()->has('success'))
    <div class="alert alert-success mt-3" role="alert">
        {{session()->get('success')}}
    </div>
@endif

@if(session()->has('danger'))
    <div class="alert alert-danger mt-3" role="alert">
        {{session()->get('danger')}}
    </div>
@endif
