@extends('layouts.admin')

@section('title', 'My Orders - Cluckoo')

@section('content')

    <div class="contents">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-lg-12">

                    <div class="breadcrumb-main">
                        <h4 class="text-capitalize breadcrumb-title">Admin Orders</h4>

                        <form action="" method="GET">
                            <div class="breadcrumb-action justify-content-center flex-wrap">

                                <div class="action-btn">
                                    <input type="date" name="date" value="{{ Request::get('date') ?? date('Y-m-d') }}" class="form-control" />
                                </div>

                                <div class="action-btn">
                                    <div class="atbd-select ">
                                        <select name="status" class="form-control ">
                                            <option value="">Select All Status</option>
                                            <option value="In Progress" {{ Request::get('status') == 'In Progress' ? 'selected':''}}>In Progress</option>
                                            <option value="Completed" {{ Request::get('status') == 'Completed' ? 'selected':''}}>Completed</option>
                                            <option value="Pending" {{ Request::get('status') == 'Pending' ? 'selected':''}}>Pending</option>
                                            <option value="Cancelled" {{ Request::get('status') == 'Cancelled' ? 'selected':''}}>Cancelled</option>
                                            <option value="Out for Delivery" {{ Request::get('status') == 'Out for Delivery' ? 'selected':''}}>Out for Delivery</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="action-btn">
                                    <button type="submit" class="btn btn-sm btn-primary btn-add"><i class="la la-send"></i>Filter</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- CODE HERE -->
                <div class="col-lg-12 mb-30">
                    <div class="card">
                        <div class="card-header color-dark fw-500">
                            Admin Orders
                        </div>
                        <div class="card-body">

                            <div class="userDatatable global-shadow border-0 bg-white w-100">
                                <div class="table-responsive">
                                    <table class="table mb-0 table-borderless">
                                        <thead>
                                            <tr class="userDatatable-header">
                                                <th><span class="userDatatable-title">Order ID</span></th>
                                                <th><span class="userDatatable-title">Tracking No</span></th>
                                                <th><span class="userDatatable-title">Username</span></th>
                                                <th><span class="userDatatable-title">Payment Mode</span></th>
                                                <th><span class="userDatatable-title">Ordered Date</span></th>
                                                <th><span class="userDatatable-title">Status Message</span></th>
                                                <th><span class="userDatatable-title float-left">Action</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($orders as $item)
                                                <tr>
                                                    <td><div class="userDatatable-content">{{ $item->id }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $item->tracking_no }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $item->fullname }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $item->payment_mode }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $item->created_at->format('d-m-Y') }}</div></td>
                                                    <td>
                                                        <div class="userDatatable-content d-inline-block">
                                                            @if ($item->status_message == 'Pending')
                                                                <span class="bg-opacity-warning  color-warning rounded-pill userDatatable-content-status active">{{ $item->status_message }}</span>
                                                            @elseif ($item->status_message == 'In Progress')
                                                                <span class="bg-opacity-warning  color-warning rounded-pill userDatatable-content-status active">{{ $item->status_message }}</span>
                                                            @elseif ($item->status_message == 'Out for Delivery')
                                                                <span class="bg-opacity-primary  color-primary rounded-pill userDatatable-content-status active">{{ $item->status_message }}</span>
                                                            @elseif ($item->status_message == 'Completed')
                                                                <span class="bg-opacity-success  color-success rounded-pill userDatatable-content-status active">{{ $item->status_message }}</span>
                                                            @elseif ($item->status_message == 'Cancelled')
                                                                <span class="bg-opacity-danger  color-danger rounded-pill userDatatable-content-status active">{{ $item->status_message }}</span>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <ul class="orderDatatable_actions mb-0 flex-wrap">
                                                            <li>
                                                                <a href="{{ url('admin/orders/' . $item->id) }}" class="view">
                                                                    <span data-feather="eye"></span></a>
                                                            </li>
                                                            {{-- <li>
                                                                <a href="#" class="edit">
                                                                    <span data-feather="edit"></span></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" class="remove">
                                                                    <span data-feather="trash-2"></span></a>
                                                            </li> --}}
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="7">No Orders Avaiable</td>
                                                </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
