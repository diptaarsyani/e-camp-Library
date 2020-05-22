<!DOCTYPE html>

<html>
<head>
    <title>e-Campus Library | Generate PDF</title>

</head>
    <body> 
        <div class="row">
            <div class="col-md-12">
               <h3 align="center">LAPORAN<br>TRANSAKSI PEMINJAMAN BUKU</h3><br>
                <div class="box box-info">
                    <div class="box-header">
                        <div class="box-body">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr md-2>
                                        <th align="left" style="width: 5%">No.</th>
                                        <th class="align-middle" style="width: 25%">Nama</th>
                                        <th class="align-middle" style="width: 35%">Buku</th>
                                        <th class="align-middle" style="width: 15%">Status</th>
                                        <th class="align-middle" style="width: 20%">Created at</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($datas as $e=>$dt)
                                    <tr>
                                        <td class="align-right">{{ $e+1 }}.</td>
                                        <td>{{ $dt->user_r->name }}</td>
                                        <td>{{ $dt->buku_r->judul }}</td>
                                        <td>{{ $dt->status_r->nama }}</td>
                                        <td>{{ date('d-m-Y H:i',strtotime($dt->created_at)) }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
 
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