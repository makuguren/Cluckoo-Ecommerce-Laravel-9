@extends('layouts.admin')
@section('title', 'Edit Product - Cluckoo')
@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Edit Product</h4>
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

                <form action="{{ url('admin/products/'.$product->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="card">
                        <div class="card-header color-dark fw-500">
                            Home
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Category</label>
                                <select class="form-control px-15" name="category_id">
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}" {{ $category->id == $product->category_id ? 'Selected':'' }}>{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                @error('category_id')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Product Name</label>
                                <input type="text" name="name" value="{{ $product->name }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('name')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Product Slug</label>
                                <input type="text" name="slug" value="{{ $product->slug }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('slug')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Select Brand</label>
                                <select class="form-control px-15" name="brand">
                                    @foreach ($brands as $brand)
                                        <option value="{{ $brand->name }}" {{ $brand->name == $product->brand ? 'Selected':'' }}>{{ $brand->name }}</option>
                                    @endforeach
                                </select>
                                @error('brand')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Small Description</label>
                                <textarea name="small_description" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $product->small_description }}</textarea>
                                @error('small_description')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Description</label>
                                <textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $product->description }}</textarea>
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
                                <input type="text" name="meta_title" value="{{ $product->meta_title }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('meta_title')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Meta Description</label>
                                <textarea name="meta_description" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $product->meta_description }}</textarea>
                                @error('meta_description')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $product->meta_keyword }}</textarea>
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
                                <input type="number" name="original_price" value="{{ $product->original_price }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('original_price')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Selling Price</label>
                                <input type="number" name="selling_price" value="{{ $product->selling_price }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('selling_price')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="a10" class="il-gray fs-14 fw-500 align-center">Quantity</label>
                                <input type="number" name="quantity" value="{{ $product->quantity }}" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                                @error('quantity')<small class="text-danger">{{$message}}</small> @enderror
                            </div>

                            <div class="form-group form-element-textarea mb-20">
                                <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Status</label>
                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="trending" id="check-un1" {{ $product->trending == '1' ? 'checked':'' }} />
                                    <label for="check-un1">
                                        <span class="checkbox-text">
                                            Trending
                                        </span>
                                    </label>
                                </div>

                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="featured" id="check-un2" {{ $product->featured == '1' ? 'checked':'' }} />
                                    <label for="check-un2">
                                        <span class="checkbox-text">
                                            Featured
                                        </span>
                                    </label>
                                </div>

                                <div class="checkbox-theme-default custom-checkbox ">
                                    <input class="checkbox" type="checkbox" name="status" id="check-un3" {{ $product->status == '1' ? 'checked':'' }} />
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
                        <div>
                            @if($product->productImages)
                            <div class="row">
                                @foreach ($product->productImages as $image)
                                <div class="ml-5">
                                    <img src="{{ asset($image->image) }}" style="width: 80px; height: 80px;" class="me-4 border" alt="Img">
                                    <a href="{{ url('admin/product-image/'.$image->id.'/delete') }}" class="d-block">Remove</a>
                                </div>
                                @endforeach
                            </div>
                            @else
                                <h5>No Image Found</h5>
                            @endif
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

                            <div class="userDatatable global-shadow border-0 bg-white w-100">
                                <div class="table-responsive">
                                    <table class="table mb-0 table-borderless">
                                        <thead>
                                            <tr class="userDatatable-header">
                                                <th><span class="userDatatable-title">Color Name</span></th>
                                                <th><span class="userDatatable-title">Quantity</span></th>
                                                <th><span class="userDatatable-title float-left">Action</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($product->productColors as $prodColor)
                                                <tr>
                                                    <td>
                                                        <div class="userDatatable-content">
                                                            @if ($prodColor->color->name)
                                                                {{ $prodColor->color->name }}
                                                            @else
                                                                No Color Found
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="userDatatable-content">
                                                            <input type="text" value="{{ $prodColor->quantity }}" class="productColorQuantity form-control form-control-sm">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <ul class="mb-0 d-flex flex-wrap">
                                                            <li>
                                                                <button type="button" value="{{ $prodColor->id }}" class="btn btn-primary btn-outline-lighten__height mr-2">Update</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" value="{{ $prodColor->id }}" class="btn btn-danger btn-outline-lighten__height">Delete</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
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

@section('scripts')
    <script>
        $(document).ready(function () {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).on('click', '.updateProductColorBtn', function () {
                var product_id = "{{ $product->id }}";
                var prod_color_id = $(this).val();
                var qty = $(this).closest('.prod-color-tr').find('.productColorQuantity').val();
                // alert(prod_color_id);

                if(qty <= 0){
                    alert('Quantity is required');
                    return false;
                }

                var data = {
                    'product_id': product_id,
                    'qty': qty
                };

                $.ajax({
                    type: "POST",
                    url: "/admin/product-color/"+prod_color_id,
                    data: data,
                    success: function (response) {
                        alert(response.message)
                    }
                });
            });

            $(document).on('click', '.deleteProductColorBtn', function () {
                var prod_color_id = $(this).val();
                var thisClick = $(this);


                $.ajax({
                    type: "GET",
                    url: "/admin/product-color/"+prod_color_id+"/delete",
                    success: function (response) {
                        thisClick.closest('.prod-color-tr').remove();
                        alert(response.message);
                    }
                });

            });

        });
    </script>
@endsection
