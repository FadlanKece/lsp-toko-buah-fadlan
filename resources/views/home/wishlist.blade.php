@extends('layout.home')
@section('title', 'Cart')
@section('content')
<div class="site-section">
  <div class="container">
    <div class="row mb-5">
      <form class="form-wishlist">
        <input type="hidden" name="id_member" value="{{ Auth::guard('webcustomer')->user()->id }}">
        <div class="site-blocks-table">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th class="product-thumbnail">Image</th>
                <th class="product-name">Product</th>
                <th class="product-price">Price</th>
                <th class="product-remove">Remove</th>
              </tr>
            </thead>
            <tbody>
              @foreach ($wishlists as $wishlist)
              <input type="hidden" name="id_produk[]" value="{{ $wishlist->product->id }}">
              <tr>
                <td class="product-thumbnail">
                  <img src="/uploads/{{ $wishlist->product->foto1 }}" alt="Image" class="img-fluid">
                </td>
                <td class="product-name">
                  <a href="/store/{{ $wishlist->product->id }}"><h2 class="h5 text-black">{{ $wishlist->product->product_name }}</h2></a>
                </td>
                <td>{{ "Rp ". number_format($wishlist->product->price) }}</td>
                <td><a href="/delete_from_wishlist/{{ $wishlist->id }}" class="btn btn-primary height-auto btn-sm">X</a></td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div>
      </form>
    </div>
  </div>
</div>
@endsection