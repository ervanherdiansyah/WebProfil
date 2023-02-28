@extends('layouts.app')
@section('content')
    <!-- ======= Sambutan Section ======= -->
    <section id="about" class="sambutan team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Madrasah Tsanawiyah Satu Atap (MTs-SA)<br>Al-Istiqomah Cianjur</h2>
          <p><a href="{{url('/mts/headmaster')}}">Kepala Madrasah</a> | <a href="{{url('/mts/visimisi')}}">Visi Misi</a> | <a href="{{url('/mts/struktur')}}">Struktur Organisasi</a></p>
        </div>

        <div class="row gy-3">
        
        <div class="col-lg-8">
          <div class="content ps-0 ps-lg-5 sambutan-content">
            <h3>{{$ra->judul}}</h3>
            {!!$ra->body!!}
          </div>
        </div>
        <div class="col-lg-4 text-center">
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <img src="{{ asset('storage/' . $ra->gambar) }}" class="img-fluid" alt="">
              <h4>{{$ra->nama}}</h4>
              <span style="font-size:20px;">{{$ra->jabatan}}</span>
            </div>
          </div><!-- End Team Member -->
        </div>
        
      </div>

      </div>
    </section><!-- End About Us Section -->
@endsection