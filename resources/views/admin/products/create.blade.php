@extends('layouts.admin')
@section('title', 'Add Product - Cluckoo')
@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Add Product</h4>
                    <div class="breadcrumb-action justify-content-center flex-wrap">
                        <div class="action-btn">
                            <a href="{{ url('admin/products') }}" class="btn btn-sm btn-danger btn-add">
                                <i class="la la-arrow-left"></i>Back</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- CODE HERE -->
            <div class="col-lg-12 mb-30">

                    {{-- @if ($errors->any())
                    <div class="alert alert-warning">
                        @foreach ($errors->all() as $error)
                            <div>{{ $error }}</div>
                        @endforeach
                    </div>
                    @endif --}}

                <form action="{{ url('admin/products') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="card">
                        <div class="card-header color-dark fw-500">
                            Home
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Category</label>
                                <select class="form-control px-15" name="category_id">
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Product Name</label>
                                <input type="text" name="name" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('name')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Product Slug</label>
                                <input type="text" name="slug" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('slug')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Select Brand</label>
                                <select class="form-control px-15" name="brand">
                                    @foreach ($brands as $brand)
                                        <option value="{{ $brand->name }}">{{ $brand->name }}</option>
                                    @endforeach
                                </select>
                                @error('brand')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Small Description</label>
                                <textarea name="small_description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                @error('small_description')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Description</label>
                                <textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                @error('description')<small class="text-danger">{{$message}}</small> @enderror
                            </div>
                        </div>
                    </div>

                    <div class="card mt-4">
                        <div class="card-header color-dark fw-500">
                            SEO Tags
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Meta Title</label>
                                <input type="text" name="meta_title" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('meta_title')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Meta Description</label>
                                <textarea name="meta_description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                @error('meta_description')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                @error('meta_keyword')<small class="text-danger">{{$message}}</small> @enderror
                            </div>
                        </div>
                    </div>

                    <div class="card mt-4">
                        <div class="card-header color-dark fw-500">
                            Details
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Original Price</label>
                                <input type="number" name="original_price" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('original_price')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Selling Price</label>
                                <input type="number" name="selling_price" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('selling_price')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Quantity</label>
                                <input type="number" name="quantity" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('quantity')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Status</label>
                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="trending" id="check-un1" />
                                    <label for="check-un1">
                                        <span class="checkbox-text">
                                            Trending
                                        </span>
                                    </label>
                                </div>

                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="featured" id="check-un2" />
                                    <label for="check-un2">
                                        <span class="checkbox-text">
                                            Featured
                                        </span>
                                    </label>
                                </div>

                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="status" id="check-un3" />
                                    <label for="check-un3">
                                        <span class="checkbox-text">
                                            Hidden
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mt-4">
                        <div class="card-header color-dark fw-500">
                            Product Image
                        </div>
                        <div class="card-body">
                            <div class="form-group form-element-textarea mb-20">
                                <div class="custom-file">
                                    <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Upload Product Images</label>
                                    <input class="form-control" type="file" name="image[]" id="formFile" multiple>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mt-4">
                        <div class="card-header color-dark fw-500">
                            Product Color
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Select Color</label>
                                    @forelse ($colors as $coloritem)
                                        <div class="col-md-3">
                                            <div class="p-2 border mb-3">
                                                    Color: <input type="checkbox" name="colors[{{ $coloritem->id }}]" value="{{ $coloritem->id }}" /> {{ $coloritem->name }}
                                                    <br/>
                                                    Quantity: <input type="number" name="colorquantity[{{ $coloritem->id }}]" style="width:70px; border:1px solid" />
                                            </div>
                                        </div>
                                    @empty
                                        <div class="col-md-12">
                                            <h1>No Colors Found</h1>
                                        </div>
                                    @endforelse
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
