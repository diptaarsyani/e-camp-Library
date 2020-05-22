@extends('layouts.master')
 
@section('content')
 
<div class="row">
    <div class="col-md-12">
        <h4>Laporan</h4>
        <div class="box box-info">
            <div class="box-header">
                <p>
                    <button class="btn btn-sm btn-flat btn-warning btn-refresh"><i class="fa fa-refresh"></i> Refresh</button>
                    <a href="{{ url('laporan') }}" class="btn btn-sm btn-flat btn-primary"><i class="fa fa-refresh"></i> Get All Data</a>
                    @if(\Auth::user()->status == 2)
                    <a href="{{ url('laporan/pdf') }}" class="btn btn-sm btn-flat btn-danger"><i class="fa fa-print"></i> Cetak</a>
                    @endif
                    @if(\Auth::user()->status == 1)
                    <a href="{{ url('laporan/pdf') }}" class="btn btn-sm btn-flat btn-success"><i class="fa fa-file-pdf-o"></i> Export PDF</a>
                    <a href="{{ url('laporan/excel') }}" class="btn btn-sm btn-flat btn-info"><i class="fa fa-file-excel-o"></i> Export Excel</a>
                    @endif
                </p>
            </div>
            <div class="box-body">
                
                <form class="form-inline" method="get" action="{{ url('laporan/periode') }}">
                  <div class="form-group">
                    <label for="email">Tanggal awal:</label>
                    <input type="text" name="tanggal_awal" class="form-control datepicker" id="date" autocomplete="off" value="{{ date('Y-m-d') }}">
                  </div>

                  <div class="form-group">
                    <label for="pwd">Tanggal akhir:</label>
                    <input type="text" name="tanggal_akhir" class="form-control datepicker" id="date" autocomplete="off" value="{{ date('Y-m-d') }}">
                  </div>

                  <div class="form-group">
                    <label for="pwd">user:</label>
                    <select class="form-control select2" name="user">
                        <option value="all">All Anggota</option>
                        @foreach($users as $us)
                        <option value="{{ $us->id }}">{{ $us->name }}</option>
                        @endforeach
                    </select>
                  </div>
                  
                  <button type="submit" class="btn btn-default">Submit</button>
                </form><br>

                <table class="table table-hover myTable">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama</th>
                            <th>Buku</th>
                            <th>Status</th>
                            <th>Created at</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data as $e=>$dt)
                        <tr>
                            <td>{{ $e+1 }}</td>
                            <td>{{ $dt->user_r->name }}</td>
                            <td>{{ $dt->buku_r->judul }}</td>
                            <td>{{ $dt->status_r->nama }}</td>
                            <td>{{ date('d F Y H:i:s',strtotime($dt->created_at)) }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>
 
@endsection
 
@section('scripts')
 
<script type="text/javascript">
    $(document).ready(function(){
 
        // btn refresh
        $('.btn-refresh').click(function(e){
            e.preventDefault();
            $('.preloader').fadeIn();
            location.reload();
        })
 
    })
</script>
 
@endsection