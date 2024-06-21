@extends('layout.home')
@section('title', 'Product')

@section('content')
<section class="ftco-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 mb-5 ftco-animate">
        <a href="../uploads/{{ $product->foto1 }}" class="image-popup"><img src="../frontend/../uploads/{{ $product->foto1 }}" class="img-fluid" alt="Colorlib Template"></a>
      </div>
      <div class="col-lg-6 product-details pl-md-5 ftco-animate">
        <h3>{{ $product->product_name }}</h3>
        <div class="rating d-flex">
          <p class="text-left mr-4">
            <a href="#" class="mr-2">5.0</a>
            <a href="#"><span class="ion-ios-star-outline"></span></a>
            <a href="#"><span class="ion-ios-star-outline"></span></a>
            <a href="#"><span class="ion-ios-star-outline"></span></a>
            <a href="#"><span class="ion-ios-star-outline"></span></a>
            <a href="#"><span class="ion-ios-star-outline"></span></a>
          </p>
          <p class="text-left mr-4">
            <a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">Rating</span></a>
          </p>
          <p class="text-left">
            <a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">Sold</span></a>
          </p>
        </div>
        @if ($discount)
          <p class="price"><del>RP {{ number_format($product->price) }}</del> &mdash; RP {{ number_format($product->price * (1 - $discount->percentage / 100)) }}</p>
        @else
          <p class="price"><span>RP {{ number_format($product->price) }}</span></p>
        @endif
        <p>{{ $product->deskripsi }}</p>
        <div class="input-group mb-3" style="max-width: 220px;">
        <input type="number" class="form-control text-center jumlah" title="Qty" step="1" min="1" value="1" placeholder="Jumlah (Kg)"
              aria-label="Example text with button addon" aria-describedby="button-addon1">
        </div>
        <p>
          <a href="#" class="btn btn-black py-3 px-5" id="add-to-cart">Add to Cart</a>
          <a href="#" class="btn btn-black py-3 px-5" id="add-to-wishlist">Add to Wishlist</a>
        </p>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <span class="subheading">Products</span>
        <h2 class="mb-4">Related Products</h2>
        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
      </div>
    </div>   		
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="product">
          <a href="#" class="img-prod"><img class="img-fluid" src="../frontend/../uploads/{{ $product->foto1 }}" alt="Colorlib Template">
            <span class="status">30%</span>
            <div class="overlay"></div>
          </a>
          <div class="text py-3 pb-4 px-3 text-center">
            <h3><a href="#">{{ $product->product_name }}</a></h3>
            <div class="d-flex">
              <div class="pricing">
                <p class="price"><span class="mr-2 price-dc">$120.00</span><span class="price-sale">$80.00</span></p>
              </div>
            </div>
            <div class="bottom-area d-flex px-3">
              <div class="m-auto d-flex">
                <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                  <span><i class="ion-ios-menu"></i></span>
                </a>
                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                  <span><i class="ion-ios-cart"></i></span>
                </a>
                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                  <span><i class="ion-ios-heart"></i></span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="product">
          <a href="#" class="img-prod"><img class="img-fluid" src="../frontend/images/product-2.jpg" alt="Colorlib Template">
            <div class="overlay"></div>
          </a>
          <div class="text py-3 pb-4 px-3 text-center">
            <h3><a href="#">Strawberry</a></h3>
            <div class="d-flex">
              <div class="pricing">
                <p class="price"><span>$120.00</span></p>
              </div>
            </div>
            <div class="bottom-area d-flex px-3">
              <div class="m-auto d-flex">
                <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                  <span><i class="ion-ios-menu"></i></span>
                </a>
                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                  <span><i class="ion-ios-cart"></i></span>
                </a>
                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                  <span><i class="ion-ios-heart"></i></span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="product">
          <a href="#" class="img-prod"><img class="img-fluid" src="../frontend/images/product-3.jpg" alt="Colorlib Template">
            <div class="overlay"></div>
          </a>
          <div class="text py-3 pb-4 px-3 text-center">
            <h3><a href="#">Green Beans</a></h3>
            <div class="d-flex">
              <div class="pricing">
                <p class="price"><span>$120.00</span></p>
              </div>
            </div>
            <div class="bottom-area d-flex px-3">
              <div class="m-auto d-flex">
                <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                  <span><i class="ion-ios-menu"></i></span>
                </a>
                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                  <span><i class="ion-ios-cart"></i></span>
                </a>
                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                  <span><i class="ion-ios-heart"></i></span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 ftco-animate">
        <div class="product">
          <a href="#" class="img-prod"><img class="img-fluid" src="../frontend/images/product-4.jpg" alt="Colorlib Template">
            <div class="overlay"></div>
          </a>
          <div class="text py-3 pb-4 px-3 text-center">
            <h3><a href="#">Purple Cabbage</a></h3>
            <div class="d-flex">
              <div class="pricing">
                <p class="price"><span>$120.00</span></p>
              </div>
            </div>
            <div class="bottom-area d-flex px-3">
              <div class="m-auto d-flex">
                <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                  <span><i class="ion-ios-menu"></i></span>
                </a>
                <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                  <span><i class="ion-ios-cart"></i></span>
                </a>
                <a href="#" class="heart d-flex justify-content-center align-items-center ">
                  <span><i class="ion-ios-heart"></i></span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

@endsection

@push('js')
  <script>
    $(function(){
      $('#add-to-cart').click(function(e){
        id_customer = {{Auth::guard('webcustomer')->user()->id}}
        id_barang = {{ $product->id }}
        jumlah = $('.jumlah').val()
        @if ($discount)
          total = {{ $product->price * (1 - $discount->percentage / 100) }} * jumlah;
        @else
          total = {{ $product->price }} * jumlah;
        @endif
        is_checkout = 0

        $.ajax({
          url : "/add_to_cart",
          method : "POST",
          headers: {
            'X-CSRF-TOKEN': "{{ csrf_token() }}",
          },
          data : {
            id_customer,
            id_barang,
            jumlah,
            total,
            is_checkout,
          },
          success : function (data) {
            window.location.href = '/cart';
          }
        });
      })
      $('#add-to-wishlist').click(function(e){
        id_customer = {{Auth::guard('webcustomer')->user()->id}}
        id_barang = {{ $product->id }}
        is_checkout = 0

        $.ajax({
          url : "/add_to_wishlist",
          method : "POST",
          headers: {
            'X-CSRF-TOKEN': "{{ csrf_token() }}",
          },
          data : {
            id_customer,
            id_barang,
            is_checkout,
          }
        });
      })
    })
  </script>
@endpush 