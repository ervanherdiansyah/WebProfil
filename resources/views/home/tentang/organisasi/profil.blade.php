@extends('layouts.app')
@section('content')
    <!-- ======= Profil Pimpinan YPI Section ======= -->
    <section id="about" class="profilpimpinan">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Profil Pimpinan<br>Yayasan Pendidikan Islam Al-Istiqomah Cianjur</h2>
        </div>

        <div class="row justify-content-center align-items-center">
            <div class="col-lg-4 col-sm-12 text-center foto-tokoh">
                <img src="{{asset('assets')}}/img/foto/only-akang.jpeg" class="img-fluid rounded-4" alt="">
            </div>
            <!-- <div class="col-lg-2 col-sm-5">
                <div class="content">
                    <ul>
                        <li>Nama Lengkap</li>
                        <li>Tempat, Tgl Lahir</li>
                        <li>Pendidikan</li>
                        <li>Jabatan</li>
                        <li>Alamat</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-sm-1">
                <div class="content">
                    <ul>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="content">
                    <ul>
                        <li>K. H. Aden Ali Abduloh, M.Pd.I.</li>
                        <li>Cianjur, 1 Januari 1970</li>
                        <li>S2 - Manajemen</li>
                        <li>Pimpinan Pondok Pesantren</li>
                        <li>Kp. Ciheulang, Desa Langensari, Kec. Karangtengah, Kab. Cianjur</li>
                    </ul>
                    <div class="mt-5 pt-5">
                        <div class="content text-center">
                            <h3>Tanda Tangan</h3>
                        </div>
                        <div class="content sambutan-content ttd-akang text-center">
                            <img src="{{asset('assets')}}/img/foto/ttd-akang.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div> -->
            <table class="col-lg-8 col-sm-12 content" style="border:solid red 1px;">
                <tbody>
                    <tr>
                        <th class="col-lg-2 col-sm-5">Nama Lengkap</th>
                        <td class="col-sm-1"> : </td>
                        <td class="col-sm-6">K. H. Aden Ali Abduloh, M.Pd.I.</td>
                    </tr>
                    <tr>
                        <th>Tempat, Tanggal Lahir</th>
                        <td> : </td>
                        <td>Cianjur, 1 Januari 1970</td>
                    </tr>
                    <tr>
                        <th>Pendidikan</th>
                        <td> : </td>
                        <td>S2 - Manajemen</td>
                    </tr>
                    <tr>
                        <th>Jabatan</th>
                        <td> : </td>
                        <td>Pimpinan Pondok Pesantren</td>
                    </tr>
                    <tr>
                        <th>Alamat</th>
                        <td> : </td>
                        <td>Kp. Ciheulang, Desa Langensari, Kec. Karangtengah, Kab. Cianjur</td>
                    </tr>
                </tbody>
            </table>
            <!-- <div class="col-lg-2 col-sm-1">
                <div class="content">
                    <ul>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                        <li> : </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="content">
                    <ul>
                        <li>K. H. Aden Ali Abduloh, M.Pd.I.</li>
                        <li>Cianjur, 1 Januari 1970</li>
                        <li>S2 - Manajemen</li>
                        <li>Pimpinan Pondok Pesantren</li>
                        <li>Kp. Ciheulang, Desa Langensari, Kec. Karangtengah, Kab. Cianjur</li>
                    </ul>
                    <div class="mt-5 pt-5">
                        <div class="content text-center">
                            <h3>Tanda Tangan</h3>
                        </div>
                        <div class="content sambutan-content ttd-akang text-center">
                            <img src="{{asset('assets')}}/img/foto/ttd-akang.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div> -->
            
        </div>
    </section><!-- End Profil Pimpinan YPI Section -->

@endsection