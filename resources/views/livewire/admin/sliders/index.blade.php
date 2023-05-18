<div>
    <div wire:ignore.self class="modal-info-delete modal fade show" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm modal-info" role="document">
            <div class="modal-content">
                <form wire:submit.prevent="destroySlider">
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
                        <h4 class="text-capitalize breadcrumb-title">Sliders</h4>
                        <div class="breadcrumb-action justify-content-center flex-wrap">
                            <div class="action-btn">
                                <a href="{{ url('admin/sliders/create') }}" class="btn btn-sm btn-primary btn-add">
                                    <i class="la la-plus"></i>Add Slider</a>
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
                            Sliders
                        </div>
                        <div class="card-body">
                            <div class="userDatatable global-shadow border-0 bg-white w-100">
                                <div class="table-responsive">
                                    <table class="table mb-0 table-borderless">
                                        <thead>
                                            <tr class="userDatatable-header">
                                                <th><span class="userDatatable-title">ID</span></th>
                                                <th><span class="userDatatable-title">Image</span></th>
                                                <th><span class="userDatatable-title">Title</span></th>
                                                <th><span class="userDatatable-title">Description</span></th>
                                                <th><span class="userDatatable-title">Status</span></th>
                                                <th><span class="userDatatable-title float-left">Action</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($sliders as $slider)
                                                <tr>
                                                    <td><div class="userDatatable-content">{{ $slider->id }}</div></td>
                                                    <td>
                                                        <div class="userDatatable__imgWrapper">
                                                            <a class="profile-image rounded-circle d-block m-0 wh-38" style="background-image:url('{{ asset("$slider->image") }}'); background-size: cover;"></a>
                                                        </div>
                                                    </td>
                                                    <td><div class="userDatatable-content">{{ $slider->title }}</div></td>
                                                    <td><div class="userDatatable-content">{{ $slider->description }}</div></td>
                                                    <td>
                                                        <div class="userDatatable-content d-inline-block">
                                                            @if ($slider->status == '0')
                                                                <span class="bg-opacity-success color-success rounded-pill userDatatable-content-status active">{{ $slider->status == '0' ? 'Visible':'Hidden' }}</span>
                                                            @else
                                                                <span class="bg-opacity-danger color-danger rounded-pill userDatatable-content-status active">{{ $slider->status == '0' ? 'Visible':'Hidden' }}</span>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <ul class="mb-0 d-flex flex-wrap">
                                                            <li>
                                                                <a href="{{ url('admin/sliders/'.$slider->id.'/edit') }}" class="btn btn-primary btn-outline-lighten__height mr-2">Edit</a>
                                                            </li>
                                                            <li>
                                                                <button type="button" wire:click="deleteSlider({{ $slider->id }})" class="btn btn-danger btn-outline-lighten__height" data-toggle="modal" data-target="#deleteModal">Delete</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @endforeach
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
</div>

@push('script')
    <script>
        window.addEventListener('close-modal', event => {
            $('#deleteModal').modal('hide');
        });
    </script>
@endpush
