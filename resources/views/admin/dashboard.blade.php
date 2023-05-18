@extends('layouts.admin')
@section('title', 'Admin Dashboard - Cluckoo')
@section('content')


<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">

                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Dashboard</h4>
                    <!-- <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <div class="form-group mb-0">
                                <div class="input-container icon-left position-relative">
                                    <span class="input-icon icon-left">
                                        <span data-feather="calendar"></span>
                                    </span>
                                    <input type="text" class="form-control form-control-default date-ranger" name="date-ranger" placeholder="Oct 30, 2019 - Nov 30, 2019">
                                    <span class="input-icon icon-right">
                                        <span data-feather="chevron-down"></span>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="action-btn">
                            <a href="" class="btn btn-sm btn-primary btn-add">
                                <i class="la la-plus"></i> Add New</a>
                        </div>
                    </div> -->
                </div>

            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalOrder }}</h1>
                            <p>Total Orders</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $todayOrder }}</h1>
                            <p>Today Orders</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $thisMonthOrder }}</h1>
                            <p>This Month Orders</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $thisYearOrder }}</h1>
                            <p>Year Orders</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>
            <hr>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalProducts }}</h1>
                            <p>Total Products</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalCategories }}</h1>
                            <p>Total Categories</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalBrands }}</h1>
                            <p>Total Brands</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>
            <hr>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalAllUsers }}</h1>
                            <p>Total Users</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalUser }}</h1>
                            <p>No. of Users</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>

            <div class="col-xxl-3 col-md-6 col-ssm-12 mb-30">
                <!-- Card 1 -->
                <div class="ap-po-details p-25 radius-xl bg-white d-flex justify-content-between">
                    <div>
                        <div class="overview-content">
                            <h1>{{ $totalAdmin }}</h1>
                            <p>No. of Admins</p>
                            
                            <!-- <div class="ap-po-details-time">
                                <span class="color-success"><i class="las la-arrow-up"></i>
                                    <strong>25%</strong></span>
                                <small>Since last week</small>
                            </div> -->
                        </div>
                    </div>

                    <!-- <div class="ap-po-timeChart">
                        <div class="overview-single__chart d-md-flex align-items-end">
                            <div class="parentContainer">
                                <div>
                                    <canvas id="mychart8"></canvas>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- Card 1 End -->
            </div>
        </div>
        <!-- ends: .row -->
    </div>

</div>

@endsection
