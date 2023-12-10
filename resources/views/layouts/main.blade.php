<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>nge'food</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style>
    .body{
       background-color: white; 
    }
.navbar-brand {
    font-size: 2rem;
    font-weight: 700;
    color: black;
    font-style: italic;
  }
  
.navbar-brand span {
    color: green;
  }
  .about,
  .menu,
  .products,
  .contact,
  .sejarah {
    padding: 8rem 7% 1.4rem;
  }
  
  .about h2,
  .menu h2,
  .products h2,
  .contact h2,
  .sejarah h2 {
    text-align: center;
    font-size: 2.6rem;
    margin-bottom: 3rem;
  }
  
  .about h2 span,
  .menu h2 span,
  .products h2 span,
  .contact h2 span,
  .sejarah h2 span {
    color: green;
  }
  .about h2 ,
  .menu h2 ,
  .products h2 ,
  .contact h2,
  .sejarah h2  {
    color: var(--primary);
  }
  
  
  .about .row {
    display: flex;
  }
  
  .about .row .about-img {
    flex: 1 1 45rem;
  }
  
  .about .row .about-img img {
    width: 100%;
    -webkit-mask-reference: url("{{('storage/img/1.jpg')}}");
    -webkit-mask-bg-size: 50%;
    -webkit-mask-repeat-style: no-repeat;
    position: center;
  }
  
  .about .row .content {
    flex: 1 1 35rem;
    padding: 0 1rem;
    color: black;
  }
  
  .about .row .content h3 {
    font-size: 1.8rem;
    margin-bottom: 1rem;
  }
  
  .about .row .content p {
    margin-bottom: 0.8rem;
    font-size: 1.3rem;
    font-weight: 300;
    line-height: 1.6;
  }
  
 
  
  
  </style>
</head>
  <body>
    <div id="app">
        <div class="main-wraper">
            @include('shared.header')
            <div class="main-content">
                @yield('content')
            </div>
            @include('shared.footer')
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>