@extends('layouts.master')

@section('content')
 
<div class="row">
    <div class="col-md-12">
        <h4>Home</h4>
        <div class="box box-info">
        </div>
            <div class="box-body">
                <!-- Main row -->
                <div class="row">
                    <!-- Left col -->
                    <section class="col-lg-12 connectedSortable">
                        <!-- Small boxes (Stat box) -->
                        <div class="row">
                            <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                <h3>15</h3>

                                <p>Total Buku</p>
                                </div>
                                <div class="icon">
                                <i class="ion ion-ios-book"></i>
                                </div>
                            </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                <h3>12</h3>

                                <p>Total Peminjaman</p>
                                </div>
                                <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                                </div>
                            </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-yellow">
                                    <div class="inner">
                                    <h3>10</h3>

                                    <p>Total Anggota</p>
                                    </div>
                                    <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                    </div>
                                </div>
                            </div>
                            <!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-red">
                                    <div class="inner">
                                    <h3>3</h3>

                                    <p>Total Pengunjung</p>
                                    </div>
                                    <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                    </div>
                                </div>
                            </div>
                            <!-- ./col -->
                        </div>
                    </section>
                    <!-- /.Left col -->
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