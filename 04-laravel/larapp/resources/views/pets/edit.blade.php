@extends('layouts.app')
@section('title', 'Edit Pet Page - PetsApp')

@section('content')
<header class="nav level-2">
    <a href="{{ url('pets') }}">
        <img src="{{ asset('images/ico-back.svg') }}" alt="Back">
    </a>
    <img src="{{ asset('images/logo.svg') }}" alt="Logo">
    <a href="javascript:;" class="mburger">
        <img src="{{ asset('images/mburger.svg') }}" alt="Menu Burger">
    </a>
</header>
<section class="register create">
    <form action="{{ url('pets/'.$pet->id) }}" method="post" enctype="multipart/form-data">
        @csrf
        @method('put')
        <input type="hidden" name="photoactual" value="{{ $pet->photo }}">
        <img src="{{ asset('images/'.$pet->photo) }}" id="upload" width="240px" alt="Upload">
        <input type="file" name="photo" id="photo" accept="image/*">
        <input type="number" name="document" placeholder="Document" value="{{ old('document', $pet->document) }}">
        <input type="text" name="fullname" placeholder="Full Name" value="{{ old('fullname', $pet->fullname) }}">
        <input type="date" name="birthdate" placeholder="BirthDate" value="{{ old('birthdate', $pet->birthdate) }}">
        <input type="text" name="phone" placeholder="Phone Number" value="{{ old('phone', $pet->phone) }}">
        <input type="email" name="email" placeholder="Email" value="{{ old('email', $pet->email) }}">
        <button type="submit">Edit</button>
    </form>
</section>
@endsection

@section('js')
<script>
    $(document).ready(function () {
        $('#upload').click(function (e) { 
            e.preventDefault()
            $('#photo').click()
        })

        $('#photo').change(function (e) { 
            e.preventDefault();
            let reader = new FileReader()
            reader.onload = function(event) {
                $('#upload').attr('src', event.target.result)
            }
            reader.readAsDataURL(this.files[0])
        })
    })
</script>
@if (count($errors->all()) > 0)
    @php $error = '' @endphp
    @foreach ($errors->all() as $message )
        @php $error .= '<li>' . $message . '</li>' @endphp
    @endforeach
    <script>
    $(document).ready(function () {
        Swal.fire({
            position: "top-end",
            title: "Ops!",
            html: `@php echo $error @endphp`,
            icon: "error",
            showConfirmButton: false,
            timer: 5000
        })
    })
    </script>
@endif
@endsection
