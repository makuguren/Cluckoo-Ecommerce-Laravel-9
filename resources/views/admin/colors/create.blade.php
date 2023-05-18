@extends('layouts.admin')
@section('title', 'Add Color - Cluckoo')
@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Add Color</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <a href="{{ url('admin/colors') }}" class="btn btn-sm btn-danger btn-add">
                                <i class="la la-arrow-left"></i>Back</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CODE HERE -->
            <div class="col-lg-12 mb-30">
                <form action="{{ url('admin/colors/create') }}" method="POST">
                    @csrf
                    <div class="card">
                        <div class="card-header color-dark fw-500">
                            Add Color
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Name</label>
                                <input type="text" name="name" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('name')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Code</label>
                                <input type="text" name="code" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('code')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Status</label>
                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="status" id="check-un1">
                                    <label for="check-un1">
                                        <span class="checkbox-text">
                                            Hidden
                                        </span>
                                    </label>
                                </div>
                            </div>

                            <div class="layout-button mt-25">
                                <button type="submit" class="btn btn-primary btn-default btn-squared px-30">Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
