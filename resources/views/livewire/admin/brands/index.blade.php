<div>
    @include('livewire.admin.brands.modal-form')
    @section('title', 'Admin Brands - Cluckoo')

    <div class="contents">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-lg-12">
                    <div class="breadcrumb-main">
                        <h4 class="text-capitalize breadcrumb-title">Brands</h4>
                        <div class="breadcrumb-action justify-content-center flex-wrap">
                            <div class="action-btn">
                                <button type="button" class="btn btn-sm btn-primary btn-add" data-toggle="modal" data-target="#addBrandModal">
                                    <i class="la la-plus"></i>Add Brand</button>
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
                            Brands
                        </div>
                        <div class="card-body">
                            <div class="userDatatable global-shadow border-0 bg-white w-100">
                                <div class="table-responsive">
                                    <table class="table mb-0 table-borderless">
                                        <thead>
                                            <tr class="userDatatable-header">
                                                <th><span class="userDatatable-title">ID</span></th>
                                                <th><span class="userDatatable-title">Name</span></th>
                                                <th><span class="userDatatable-title">Category</span></th>
                                                <th><span class="userDatatable-title">Slug</span></th>
                                                <th><span class="userDatatable-title">Status</span></th>
                                                <th><span class="userDatatable-title float-left">Action</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($brands as $brand)
                                                <tr>
                                                    <td><div class="userDatatable-content">{{ $brand->id }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $brand->name }}</div></td>
                                                    <td>
                                                        <div class="userDatatable-content">
                                                            @if ($brand->category)
                                                                {{ $brand->category->name }}
                                                            @else
                                                                No Category
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td><div class="userDatatable-content">{{ $brand->slug }}</div></td>
                                                    <td>
                                                        <div class="userDatatable-content d-inline-block">
                                                            @if ($brand->status == '1')
                                                                <span class="bg-opacity-danger color-danger rounded-pill userDatatable-content-status active">{{ $brand->status == '1' ? 'hidden':'visible' }}</span>
                                                            @else
                                                                <span class="bg-opacity-success color-success rounded-pill userDatatable-content-status active">{{ $brand->status == '1' ? 'hidden':'visible' }}</span>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <ul class="mb-0 d-flex flex-wrap">
                                                            <li>
                                                                <button type="button" wire:click="editBrand({{ $brand->id }})" class="btn btn-primary btn-outline-lighten__height mr-2" data-toggle="modal" data-target="#updateBrandModal">Edit</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" wire:click="deleteBrand({{ $brand->id }})" class="btn btn-danger btn-outline-lighten__height" data-toggle="modal" data-target="#deleteBrandModal">Delete</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @empty
                                            <tr>
                                                <td colspan="5">No Brands Found</td>
                                            </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-3 float-right">
                                        {{ $brands->links() }}
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
            $('#addBrandModal').modal('hide');
            $('#updateBrandModal').modal('hide');
            $('#deleteBrandModal').modal('hide');
        });
    </script>
@endpush
