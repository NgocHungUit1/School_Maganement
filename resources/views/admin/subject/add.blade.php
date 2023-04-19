@extends('layouts.app')
@section('content')
    <div class="main-wrapper">

        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row">
                        <div class="col">
                            <h3 class="page-title">Add Subject</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">DashBoard</a></li>
                                <li class="breadcrumb-item active">Add Subject</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="" method="post">
                                    @csrf

                                    <div class="form-group row">
                                        <label>Subject Name <span class="login-danger">*</span></label>
                                        <input class="form-control" type="text" name="name"
                                            placeholder="Enter Name Subject">
                                    </div>
                                    <div class="form-group row">
                                        <label>Status <span class="login-danger">*</span></label>
                                        <select class="form-control select" name="status">
                                            <option value="0">Active</option>
                                            <option value="1">InActive</option>
                                        </select>
                                    </div>

                                    <div class="form-group row">
                                        <label>Subject Type <span class="login-danger">*</span></label>
                                        <select class="form-control select" name="type">
                                            <option value="Theory">Theory</option>
                                            <option value="Practical">Practical</option>
                                        </select>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-form-label col-md-2"></label>
                                        <div class="col-md-10">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
