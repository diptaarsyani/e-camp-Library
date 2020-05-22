
@section('content')
 
<div class="row">
    <div class="col-md-12">
        <h4>Laporan</h4>
        <a href="{{ route('laporan.excel') }}">Export Excel</a>
        <div class="box box-info">
            <div class="box-header">
                <div class="box-body">
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
                            @foreach($datas as $e=>$dt)
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