@extends('layout.home')
@section('title', 'Checkout')
@section('content')
    <section class="ftco-section">
        <div class="container">
            <form name="checkout" class="checkout" method="POST" action="/payments">
                <div class="row justify-content-center">
                    <div class="col-xl-7 ftco-animate">
                        <form action="#" class="billing-form">
                            <h3 class="mb-4 billing-heading">Billing Details</h3>
                            <div class="row align-items-end">
                                @csrf
                                @foreach ($order as $i)
                                    <input type="hidden" name="id_order" value="{{ $i->id }}">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="firstname">Name</label>
                                            <input type="text" class="form-control" id="atas_nama" name="atas_nama"
                                                placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="streetaddress">Province</label>
                                            <input type="text" class="form-control" placeholder="Provinsi">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="City">
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="towncity">Address Detail</label>
                                            <input type="text" class="form-control" placeholder="Address Detail"
                                                name="address_detail" id="address_detail"
                                                value="{{ Auth::guard('webcustomer')->user()->address }}">
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="phone">Phone</label>
                                            <input type="number" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="emailaddress">Bank Account</label>
                                            <input type="number" class="form-control" id="no_rekening" name="no_rekening"
                                                placeholder="Bank Account">
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </form><!-- END -->
                    </div>
                    <div class="col-xl-5">
                        <div class="row mt-5 pt-3">
                            <div class="col-md-12 d-flex mb-5">
                                <div class="cart-detail cart-total p-3 p-md-4">
                                    <h3 class="billing-heading mb-4">Cart Total</h3>
                                    @php
                                        $checkoutTotal = 0;
                                    @endphp
                                    @foreach ($cart as $c)
                                        @php
                                            $checkoutTotal += $c->total;
                                        @endphp
                                        <p class="d-flex">
                                            <span>{{ $c->product->product_name }}</span>
                                            <span>{{ 'Rp ' . number_format($c->total) }}</span>
                                        </p>
                                    @endforeach
                                    <input type="hidden" name="jumlah" value="{{ $checkoutTotal }}">
                                    <hr>
                                    <p class="d-flex total-price">
                                        <span>Total</span>
                                        <span>{{ 'Rp ' . number_format($checkoutTotal) }}</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="cart-detail p-3 p-md-4">
                                    <h3 class="billing-heading mb-4">Payment Method</h3>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio" class="mr-2"> Direct Bank
                                                    Tranfer</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio" class="mr-2"> Check
                                                    Payment</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio" class="mr-2"> Paypal</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="checkbox">
                                                <label><input type="checkbox" value="" class="mr-2"> I have read and
                                                    accept the
                                                    terms and conditions</label>
                                            </div>
                                        </div>
                                    </div>
                                    <p><a href="/orders"><button type="submit" class="btn btn-primary py-3 px-4">Place an
                                                order</button></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->
                </div>
            </form>
        </div>
    </section> <!-- .section -->

@endsection
