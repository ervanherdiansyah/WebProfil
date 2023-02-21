@extends('layouts.app')
@section('content')
    <!-- ======= Sambutan Section ======= -->
    <section id="about" class="sambutan team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Sekolah Menengah Atas Islam(SMA-I)<br>Al-Istiqomah Cianjur</h2>
          <p><a href="{{url('/sma/headmaster')}}">Kepala Sekolah</a> | <a href="{{url('/sma/visimisi')}}">Visi Misi</a> | <a href="{{url('/sma/struktur')}}">Struktur Organisasi</a></p>
        </div>

        <div class="row gy-3">
        
          <div class="col-lg-8">
            <div class="content ps-0 ps-lg-5 sambutan-content">
              <h3>Selayang Pandang</h3>
              <p class="text-sambutan">
                SMAN 1 Cianjur didirikan pada tahun 1959 atas prakarsa tokoh masyarakat Cianjur beserta DPRD dan para orang tua murid yang anknya sudah tamat SLTP.
              </p>
              <p class="text-sambutan">
                SMAN 1 Cianjur pada mulanya bernama SMA Badak Putih (swasta) dengan kepala sekolah Bapak Suryadi Wonoerdjojo. Pada bulan Oktober 1959 SMA Badak putih resmi berubah nama menjadi SMA Negeri dengan SK Menteri P&K tanggal 15 Oktober 1959 No. 72/SK/B.III. Upacara peresmiannya pada tanggal 15 November 1959 di gedung Tjung Hwa Tjung Hwee yang kini bernama Wisma Karya. Mulai tanggal 1 Mei 1960 dengan SK Menteri P&K tanggal 24 April 1960 No. 34037/C.I diangkatlah Bapak Moh. Muchtar sebagai direktur SMA Negeri Cianjur.
              </p>
              <p class="text-sambutan">
                Pada tanggal 26 Desember 1964 dilakukan peletakan batu pertama pembangunan gedung SMA Negeri Cianjur (kampus yang ada sekarang) yang dihadiri oleh tokoh-tokoh masyarakat, Pemerintah Daerah, dan Provinsi juga CV. Haruman sebagai pelaksana pembangunan.
              </p>
              <p class="text-sambutan">
                Kemudian tanggal 19 januari 1966 gedung SMA Negeri Cianjur mulai dipakai dan pimpinannya mulai tanggal 20 April 1966 diserahterinakab dari Moh. Muchtar kepada Bapak Endy Suhenda, lalu tanggal 2 september 1966 pimpinan SMA Negeri Cianjur diserahkan pada Bapak D. Effendi. Mulai tanggal 19 Oktober 1967 pimpinan SMA Negeri Cianjur diserahterimakan lagi kepada Bapak Drs. Mamin Wijayakusuma.
              </p>
              <p class="text-sambutan">
                Pada tahun 1980 tepatnya bulan April, Bapak Drs. Mamin Wijayakusuma digantikan oleh Bapak Drs. A. Riswaya sampai tahun 1983. Kemudian Desember 1983 Bapak Drs. A. Riswaya diganti oleh Bapak Drs. Maryono sampai tahun 1988. Bulan Juli 1988 Bapak Drs.Maryono digantikan oleh Bapak Drs. A. Subarkah sampai tahun 1993, lalu pada bulan Januari 1993 Bapak Drs. A. Subarkah digantikan oleh Bapak Drs. Nanai Said, yang kemudian digantikan oleh Bapak Drs. A. S. Arifin Sulaeman.
              </p>
            </div>
          </div>
          <div class="col-lg-4 text-center">
            <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
              <div class="member">
                <img src="{{asset('assets')}}/img/team/team-2.jpg" class="img-fluid" alt="">
                <h4>M. Agung Husaini</h4>
                <span style="font-size:20px;">Kepala Sekolah</span>
              </div>
            </div><!-- End Team Member -->
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

@endsection