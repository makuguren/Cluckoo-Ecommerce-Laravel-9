@extends('layouts.admin')
@section('title', 'Edit User - Cluckoo')
@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Edit User</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <a href="{{ url('admin/users') }}" class="btn btn-sm btn-danger btn-add">
                                <i class="la la-arrow-left"></i>Back</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CODE HERE -->
            <div class="col-lg-12 mb-30">
                <form action="{{ url('admin/users/'.$user->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="card">
                        <div class="card-header color-dark fw-500">
                            Edit User
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Name</label>
                                <input type="text" name="name" value="{{ $user->name }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('name')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Email</label>
                                <input type="text" name="email" readonly value="{{ $user->email }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('email')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Password</label>
                                <input type="text" name="password" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('password')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="" class="il-gray fs-14 fw-500 align-center">Select Role</label>
                                <select name="role_as" class="form-control px-15">
                                    <option value="">Select Role</option>
                                    <option value="0" {{ $user->role_as == '0' ? 'selected':'' }}>User</option>
                                    <option value="1" {{ $user->role_as == '1' ? 'selected':'' }}>Admin</option>
                                </select>
                                @error('role_as')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="layout-button mt-25">
                                <button type="submit" class="btn btn-primary btn-default btn-squared px-30">Update</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection
