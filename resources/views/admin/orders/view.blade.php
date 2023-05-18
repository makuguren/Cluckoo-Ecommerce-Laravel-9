@extends('layouts.admin')

@section('title', 'My Order Details - Cluckoo')

@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">

                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">My Order Details</h4>

                    <div class="breadcrumb-action justify-content-center flex-wrap">

                        <div class="action-btn">
                            {{-- <a href="{{ url('admin/orders') }}" class="btn btn-danger btn-sm float-end mx-1">Back</a> --}}
                            <a href="{{ url('admin/orders') }}" class="btn btn-sm btn-danger btn-add">
                                <i class="la la-arrow-left"></i>Back</a>
                        </div>

                        <div class="action-btn">
                            {{-- <a href="{{ url('admin/invoice/'.$order->id.'/generate') }}" class="btn btn-primary btn-sm float-end mx-1">Download Invoice</a> --}}
                            <a href="{{ url('admin/invoice/'.$order->id.'/generate') }}" class="btn btn-sm btn-primary btn-add">
                                <i class="la la-download"></i>Download Invoice</a>
                        </div>

                        <div class="action-btn">
                            {{-- <a href="{{ url('admin/invoice/'.$order->id) }}" target="__blank" class="btn btn-warning btn-sm float-end mx-1">View Invoice</a> --}}
                            <a href="{{ url('admin/invoice/'.$order->id) }}" class="btn btn-sm btn-warning btn-add">
                                <i class="la la-eye"></i>View Invoice</a>
                        </div>

                        <div class="action-btn">
                            {{-- <a href="{{ url('admin/invoice/'.$order->id.'/mail') }}" class="btn btn-info btn-sm float-end mx-1">Send Invoice via Mail</a> --}}
                            <a href="{{ url('admin/invoice/'.$order->id.'/mail') }}" class="btn btn-sm btn-info btn-add">
                                <i class="la la-send"></i>Send Invoice Via Mail</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CODE HERE -->
            <div class="col-lg-12 mb-30">
                @if (session('message'))
                    <div class="alert alert-success mb-3">{{ session('message') }}</div>
                @endif

                <div class="card">
                    <div class="card-header color-dark fw-500">
                        My Order Details
                    </div>
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-6">
                                <h5>Order Details</h5>
                                <h6>Order Id: {{ $order->id }}</h6>
                                <h6>Tracking Id/No.: {{ $order->tracking_no }}</h6>
                                <h6>Ordered Date: {{ $order->created_at->format('d-m-Y h:i A') }}</h6>
                                <h6>Payment Mode: {{ $order->payment_mode }}</h6>
                                <h6 class="border p-2 text-success mt-3">
                                    Order Status Message: <span class="text-uppercase">{{ $order->status_message }}</span>
                                </h6>
                            </div>
                            <div class="col-md-6">
                                <h5>User Details</h5>
                                <h6>Full Name: {{ $order->fullname }}</h6>
                                <h6>Email Id: {{ $order->email }}</h6>
                                <h6>Phone: {{ $order->phone }}</h6>
                                <h6>Address: {{ $order->address }}</h6>
                                <h6>Pin Code: {{ $order->pincode }}</h6>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-lg-12 mb-30">
                <div class="card">
                    <div class="card-header color-dark fw-500">
                        Order Items
                    </div>
                    <div class="card-body">
                        <div class="userDatatable global-shadow border-0 bg-white w-100">
                            <div class="table-responsive">
                                <table class="table mb-0 table-borderless">
                                    <thead>
                                        <tr class="userDatatable-header">
                                            <th><span class="userDatatable-title">Item ID</span></th>
                                            <th><span class="userDatatable-title">Image</span></th>
                                            <th><span class="userDatatable-title">Product</span></th>
                                            <th><span class="userDatatable-title">Price</span></th>
                                            <th><span class="userDatatable-title">Quantity</span></th>
                                            <th><span class="userDatatable-title">Total</span></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $totalPrice = 0;
                                        @endphp
                                        @foreach ($order->orderItems as $orderItem)
                                            <tr>
                                                <td><div class="userDatatable-content">{{ $orderItem->id }}</div></td>
                                                <td>
                                                    @if ($orderItem->product->productImages)
                                                        <img src="{{ asset($orderItem->product->productImages[0]->image) }}"
                                                            style="width: 50px; height: 50px" alt="">
                                                    @else
                                                        <img src="" style="width: 50px; height: 50px" alt="">
                                                    @endif
                                                </td>
                                                <td>
                                                    <div class="userDatatable-content">
                                                        {{ $orderItem->product->name }}
                                                        @if ($orderItem->productColor)
                                                            @if ($orderItem->productColor->color)
                                                                <span>- Color: {{ $orderItem->productColor->color->name }}</span>
                                                            @endif
                                                        @endif
                                                    </div>
                                                </td>
                                                <td><div class="userDatatable-content">{{ $orderItem->price }}</div></td>
                                                <td><div class="userDatatable-content">{{ $orderItem->quantity }}</div></td>
                                                <td><div class="userDatatable-content">₱{{ number_format($orderItem->quantity * $orderItem->price), 2 }}</div></td>
                                                @php
                                                    $totalPrice += $orderItem->quantity * $orderItem->price;
                                                @endphp
                                            </tr>
                                        @endforeach
                                        <tr>
                                            <td colspan="5" class="userDatatable-content">Total Amount:</td>
                                            <td colspan="1" class="userDatatable-content">₱{{ number_format($totalPrice), 2 }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-lg-12 mb-30">
                <div class="card">
                    <div class="card-header color-dark fw-500">
                        Order Process (Order Status Updates)
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-5">
                                <form action="{{ url('admin/orders/'.$order->id) }}" method="POST">
                                    @csrf
                                    @method('PUT')

                                    <label>Place your Order Status</label>
                                    <div class="input-group">
                                        <select name="order_status" class="form-select">
                                            <option value="">Select Order Status</option>
                                            <option value="In Progress" {{ Request::get('status') == 'In Progress' ? 'selected':''}}>In Progress</option>
                                            <option value="Completed" {{ Request::get('status') == 'Completed' ? 'selected':''}}>Completed</option>
                                            <option value="Pending" {{ Request::get('status') == 'Pending' ? 'selected':''}}>Pending</option>
                                            <option value="Cancelled" {{ Request::get('status') == 'Cancelled' ? 'selected':''}}>Cancelled</option>
                                            <option value="Out for Delivery" {{ Request::get('status') == 'Out for Delivery' ? 'selected':''}}>Out for Delivery</option>
                                        </select>
                                        <button type="submit" class="btn btn-primary text-white">Update</button>
                                    </div>

                                </form>
                            </div>
                            <div class="col-md-7">
                                <br />
                                <h4 class="md-3">Current Order Status: <span class="text-uppercase">{{ $order->status_message }}</span></h4>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
