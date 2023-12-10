@extends('layouts.main')
@section ('content')
<div class="body">
<div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{('storage/img/4.jpg')}}" class="d-block w-100" height="665px" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>AYO TEMUKAN HAL MENARIK</h5>
        <p>beri rating setiap makanan dan minuman</p>
        <a class="btn btn-success" href="#" role="button">MULAI</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="{{('storage/img/5.jpg')}}" class="d-block w-100"  height="665px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{('storage/img/6.jpg')}}" class="d-block w-100" height="665px" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<section id="mm" class="about">
    <h2>makanan &<span> minuman </span></h2>
    <div class="row">
        <div class="col">
      <div class="about-img">
        <img src="{{('storage/img/5.jpg')}}" height="300px"style="width: 600px;"  alt="Tentang Kami">
      </div>
    </div>
      <div class="content">
        <div class="col">
        <h3>Kenapa memilih Minuman kami?</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia aliquid exercitationem nihil ducimus, reprehenderit asperiores, autem tempora velit reiciendis quam officiis dolor doloremque debitis laboriosam fugit quidem. Laudantium libero quidem facere, 
          dolorem eius vel eos accusantium impedit? Sunt, vel minus excepturi, inventore, neque deleniti ad fugit assumenda itaque omnis repudiandae ea sed dolorum autem voluptatum quasi deserunt. Incidunt, aut vel expedita est, nulla saepe, natus commodi libero nam mollitia sit?</p>
      </div>
      </div>
    </div>
  </section>

  <section id="about" class="about">
    <h2><span>Tentang</span> Kami</h2>
    <div class="row">
      <div class="content">
        <div class="col">
        <h3>Kenapa harus kami?</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia aliquid exercitationem nihil ducimus, reprehenderit asperiores, autem tempora velit reiciendis quam officiis dolor doloremque debitis laboriosam fugit quidem. Laudantium libero quidem facere, 
          dolorem eius vel eos accusantium impedit? Sunt, vel minus excepturi, inventore, neque deleniti ad fugit assumenda itaque omnis repudiandae ea sed dolorum autem voluptatum quasi deserunt. Incidunt, aut vel expedita est, nulla saepe, natus commodi libero nam mollitia sit?</p>
      </div>
      </div>
      <div class="col">
      <div class="about-img">
        <img src="{{('storage/img/5.jpg')}}" height="300px"style="width: 600px;"  alt="Tentang Kami">
      </div>
    </div>
    </div>
  </section>




<div class="row" id="sejarah" >
<div class="sejarah">
<h2><span>Sejarah</span>Makanan</h2>
</div>
@forelse ($posts as $post)
    <div class="col" style="margin-top: 30px; " >
<div class="card" style="width: 19rem; min-height:100%; margin-left:10px;">
  <img src="{{ asset('storage/posts/'.$post->image) }}" class="card-img-top" alt="...">
  <div class="card-body">
  <h5 class="card-title">{{ $post->title }}</h5>
    <p class="card-text">{!! $post->content !!}</p>
  </div>
</div>
    </div>
    @empty
@endforelse
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
@endsection