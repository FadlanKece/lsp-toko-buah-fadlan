@extends('layout.home')
@section('title', 'List Products')
@section('content')

<div class="site-section">
  <div class="container">

    <div class="row">
      @foreach ($products as $product)
      <div class="col-sm-6 col-lg-4 text-center item mb-4">
        @php
        $discount = $discounts->where('id_barang', $product->id)->where('start_date', '<=', now())->where('end_date', '>=', now())->first();
        @endphp
        @if ($discount)
            <span class="tag">Sale</span>
        @endif
        <a href="/store/{{ $product->id }}" class="product-link">
          <div class="image-container" style="width: 200px; height: auto; margin: 0 auto;">
            <img src="/uploads/{{ $product->foto1 }}" alt="Image" class="product-image" style="width: 100%; height: auto;">
          </div>
        </a>
        <h3 class="text-dark"><a href="/store/{{ $product->id }}">{{ $product->product_name }}</a></h3>
        @if ($discount)
          <p class="price"><del>RP {{ number_format($product->price) }}</del> &mdash; RP {{ number_format($product->price * (1 - $discount->percentage / 100)) }}</p>
        @else
          <p class="price">RP {{ number_format($product->price) }}</p>
        @endif
      </div>
      @endforeach
    </div>
  </div>
</div>
@endsection