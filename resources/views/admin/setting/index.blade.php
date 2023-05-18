@extends('layouts.admin')
@section('title', 'Admin Settings - Cluckoo')
@section('content')

<div class="contents">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12">
                <div class="breadcrumb-main">
                    <h4 class="text-capitalize breadcrumb-title">Site Settings</h4>
                </div>
            </div>

            <!-- CODE HERE -->
            <div class="col-lg-12 mb-30">
                <div class="row">
                    <div class="col-md-12 grid-margin">

                      @if (session('message'))
                          <div class="alert alert-success mb-3">{{ session('message') }}</div>
                      @endif

                      <form action="{{ url('/admin/settings') }}" method="POST">
                          @csrf
                          <div class="card mb-3">
                              <div class="card-header color-dark fw-500">
                                  Website
                              </div>
                              <div class="card-body">
                                  <div class="row">
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Website Name</label>
                                          <input type="text" name="website_name" value="{{ $setting->website_name ?? '' }}" class="form-control"/>
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Website URL</label>
                                          <input type="text" name="website_url" value="{{ $setting->website_url ?? '' }}" class="form-control"/>
                                      </div>
                                      <div class="col-md-12 mb-3">
                                        <label for="a10" class="il-gray fs-14 fw-500 align-center">Website Description</label>
                                        <textarea name="website_description" class="form-control" rows="3">{{ $setting->website_description ?? '' }}</textarea>
                                    </div>
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Page Title</label>
                                          <input type="text" name="page_title" value="{{ $setting->page_title ?? '' }}" class="form-control"/>
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Meta Keywords</label>
                                          <textarea name="meta_keyword" class="form-control" rows="3">{{ $setting->meta_keyword ?? '' }}</textarea>
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Meta Description</label>
                                          <textarea name="meta_description" class="form-control" rows="3">{{ $setting->meta_description ?? '' }}</textarea>
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <div class="card mb-3">
                              <div class="card-header color-dark fw-500">
                                  Website - Information
                              </div>
                              <div class="card-body">
                                  <div class="row">
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Address</label>
                                          <textarea name="address" class="form-control" rows="3">{{ $setting->address ?? '' }}</textarea>
                                      </div>
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Phone 1 *</label>
                                          <input type="text" name="phone1" value="{{ $setting->phone1 ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Phone No. 2 *</label>
                                          <input type="text" name="phone2" value="{{ $setting->phone2 ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Email Id 1 *</label>
                                          <input type="text" name="email1" value="{{ $setting->email1 ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-12 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Email Id 2 *</label>
                                          <input type="text" name="email2" value="{{ $setting->email2 ?? '' }}" class="form-control" />
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <div class="card mb-3">
                              <div class="card-header color-dark fw-500">
                                  Website - Social Media
                              </div>
                              <div class="card-body">
                                  <div class="row">
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Facebook (Optional)</label>
                                          <input type="text" name="facebook" value="{{ $setting->facebook ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Twitter (Optional)</label>
                                          <input type="text" name="twitter" value="{{ $setting->twitter ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">Instagram (Optional)</label>
                                          <input type="text" name="instagram" value="{{ $setting->instagram ?? '' }}" class="form-control" />
                                      </div>
                                      <div class="col-md-6 mb-3">
                                          <label for="a10" class="il-gray fs-14 fw-500 align-center">YouTube (Optional)</label>
                                          <input type="text" name="youtube" value="{{ $setting->youtube ?? '' }}" class="form-control" />
                                      </div>
                                  </div>
                              </div>
                          </div>

                          <div class="text-end">
                              <button type="submit" class="btn btn-primary text-white">Save</button>
                          </div>

                      </form>
                    </div>
                  </div>
            </div>
        </div>
    </div>
</div>

@endsection
