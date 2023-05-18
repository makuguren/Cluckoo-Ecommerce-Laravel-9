<div>
    <div wire:ignore.self class="modal-info-delete modal fade show" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-info" role="document">
            <div class="modal-content">
                <form wire:submit.prevent="destroyProduct">
                    <div class="modal-body">
                        <div class="modal-info-body d-flex">
                            <div class="modal-info-icon warning">
                                <span data-feather="info"></span>
                            </div>
                            <div class="modal-info-text">
                                <h6>Are you sure you want to delete this data?</h6>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger btn-outlined btn-sm" data-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-primary btn-outlined btn-sm">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="contents">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-lg-12">
                    <div class="breadcrumb-main">
                        <h4 class="text-capitalize breadcrumb-title">Products</h4>
                        <div class="breadcrumb-action justify-content-center flex-wrap">
                            <div class="action-btn">
                                <a href="{{ url('admin/products/create') }}" class="btn btn-sm btn-primary btn-add">
                                    <i class="la la-plus"></i>Add Product</a>
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
                            Products
                        </div>
                        <div class="card-body">
                            <div class="userDatatable global-shadow border-0 bg-white w-100">
                                <div class="table-responsive">
                                    <table class="table mb-0 table-borderless">
                                        <thead>
                                            <tr class="userDatatable-header">
                                                <th><span class="userDatatable-title">ID</span></th>
                                                <th><span class="userDatatable-title">Category</span></th>
                                                <th><span class="userDatatable-title">Product</span></th>
                                                <th><span class="userDatatable-title">Price</span></th>
                                                <th><span class="userDatatable-title">Quantity</span></th>
                                                <th><span class="userDatatable-title">Status</span></th>
                                                <th><span class="userDatatable-title float-left">Action</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($products as $product)
                                                <tr>
                                                    <td><div class="userDatatable-content">{{ $product->id }}</div></td>
                                                    <td>
                                                        <div class="userDatatable-content">
                                                            @if($product->category)
                                                                {{ $product->category->name }}
                                                            @else
                                                                No Category
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td><div class="userDatatable-content">{{ $product->name }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $product->selling_price }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $product->quantity }}</div></td>
                                                    {{-- <td><div class="userDatatable-content">{{ $product->status == '1' ? 'Hidden':'Visible' }}</div></td> --}}
                                                    <td>
                                                        <div class="userDatatable-content d-inline-block">
                                                            @if ($product->status == '1')
                                                                <span class="bg-opacity-danger color-danger rounded-pill userDatatable-content-status active">{{ $product->status == '1' ? 'Hidden':'Visible' }}</span>
                                                            @else
                                                                <span class="bg-opacity-success color-success rounded-pill userDatatable-content-status active">{{ $product->status == '1' ? 'Hidden':'Visible' }}</span>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <ul class="mb-0 d-flex flex-wrap">
                                                            <li>
                                                                <a href="{{ url('admin/products/'.$product->id.'/edit') }}" class="btn btn-primary btn-outline-lighten__height mr-2">Edit</a>
                                                            </li>
                                                            <li>
                                                                <button type="button" wire:click="deleteProduct({{ $product->id }})" class="btn btn-danger btn-outline-lighten__height" data-toggle="modal" data-target="#deleteModal">Delete</button>
                                                                {{-- <a href="#" wire:click="deleteCategory({{ $category->id }})" data-bs-toggle="modal" data-bs-target="#deleteModal" class="btn btn-danger btn-sm">Delete</a> --}}
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @empty
                                            <tr>
                                                <td colspan="7">No Products Avaiable</td>
                                            </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-3 float-right">
                                        {{ $products->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

@push('script')
    <script>
        window.addEventListener('close-modal', event => {
            $('#deleteModal').modal('hide');
        });
    </script>
@endpush

