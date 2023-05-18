{{-- Modal --}}
<div wire:ignore.self class="addBrandModal modal fade show" id="addBrandModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content modal-bg-white ">
            <div class="modal-header">
                <h6 class="modal-title">Add Brands</h6>
                <button type="button" wire:click="closeModal" class="close" data-dismiss="modal" aria-label="Close">
                    <span data-feather="x"></span></button>
            </div>
            <form wire:submit.prevent="storeBrand()">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Category</label>
                        <select wire:model.defer="category_id" required class="form-control px-15">
                            <option value="">--Select Category--</option>
                            @foreach ($categories as $cateItem)
                                <option value="{{ $cateItem->id }}">{{ $cateItem->name }}</option>
                            @endforeach
                        </select>
                        @error('category_id')<small class="text-danger">{{ $message }}</small>@enderror
                    </div>

                    <div class="form-group">
                        <label for="a10" class="il-gray fs-14 fw-500 align-center">Name</label>
                        <input type="text" wire:model.defer="name" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                        @error('name')<small class="text-danger">{{$message}}</small> @enderror
                    </div>

                    <div class="form-group">
                        <label for="a10" class="il-gray fs-14 fw-500 align-center">Slug</label>
                        <input type="text" wire:model.defer="slug" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                        @error('slug')<small class="text-danger">{{$message}}</small> @enderror
                    </div>

                    <div class="form-group form-element-textarea mb-20">
                        <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Status</label>
                        <div class="checkbox-theme-default custom-checkbox ">
                            <input class="checkbox" wire:model.defer="status" type="checkbox" id="check-un1" />
                            <label for="check-un1">
                                <span class="checkbox-text">
                                    Hidden
                                </span>
                            </label>
                            @error('status')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary btn-sm">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

{{-- Brand Update Modal --}}
<div wire:ignore.self class="updateBrandModal modal fade show" id="updateBrandModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content modal-bg-white ">
            <div class="modal-header">
                <h6 class="modal-title">Update Brands</h6>
                <button type="button" wire:click="closeModal" class="close" data-dismiss="modal" aria-label="Close">
                    <span data-feather="x"></span></button>
            </div>
            <form wire:submit.prevent="updateBrand">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="exampleFormControlSelect1" class="il-gray fs-14 fw-500 align-center">Category</label>
                        <select wire:model.defer="category_id" required class="form-control px-15">
                            <option value="">--Select Category--</option>
                            @foreach ($categories as $cateItem)
                                <option value="{{ $cateItem->id }}">{{ $cateItem->name }}</option>
                            @endforeach
                        </select>
                        @error('category_id')<small class="text-danger">{{ $message }}</small>@enderror
                    </div>

                    <div class="form-group">
                        <label for="a10" class="il-gray fs-14 fw-500 align-center">Name</label>
                        <input type="text" wire:model.defer="name" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                        @error('name')<small class="text-danger">{{$message}}</small> @enderror
                    </div>

                    <div class="form-group">
                        <label for="a10" class="il-gray fs-14 fw-500 align-center">Slug</label>
                        <input type="text" wire:model.defer="slug" class="form-control ih-medium ip-light radius-xs b-light px-15" id="a10">
                        @error('slug')<small class="text-danger">{{$message}}</small> @enderror
                    </div>

                    <div class="form-group form-element-textarea mb-20">
                        <label for="exampleFormControlTextarea1" class="il-gray fs-14 fw-500 align-center">Status</label>
                        <div class="checkbox-theme-default custom-checkbox ">
                            <input class="checkbox" wire:model.defer="status" type="checkbox" id="check-un2" />
                            <label for="check-un2">
                                <span class="checkbox-text">
                                    Hidden
                                </span>
                            </label>
                            @error('status')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary btn-sm">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

{{-- Brand Delete Modal --}}
<div wire:ignore.self class="modal-info-delete modal fade show" id="deleteBrandModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-info" role="document">
        <div class="modal-content">
            <form wire:submit.prevent="destroyBrand">
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
