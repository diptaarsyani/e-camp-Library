<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peminjaman;
use App\User;
use PDF;
use Excel;
use App\Exports\LaporanExport;

class Laporan_controller extends Controller
{
    public function index(){
    	$title = 'e-Campus Library | Laporan';
    	$data = Peminjaman::get();
    	$users = User::whereNull('status')->get();
    	// dd($data);
    	return view('laporan.index',compact('title','data','users'));
    }

    public function periode(Request $request){
    	$users = User::whereNull('status')->get();

    	$tanggal_awal = date('Y-m-d',strtotime($request->tanggal_awal));
    	$tanggal_akhir = date('Y-m-d',strtotime($request->tanggal_akhir));
    	$user = $request->user;

    	$title = "Laporan dari tanggal $tanggal_awal sampai tanggal $tanggal_akhir";

    	if($user == 'all'){
    		$data = Peminjaman::where('created_at','>=',$tanggal_awal.' 00:00:00')->where('created_at','<=',$tanggal_akhir. '23:59:59')->get();
    	}else{
    		$data = Peminjaman::where('created_at','>=',$tanggal_awal.' 00:00:00')->where('created_at','<=',$tanggal_akhir. '23:59:59')->where('user',$user)->get();
    	}

    	
    	// dd($data);
    	return view('laporan.index',compact('title','data','users'));
	}
	
	public function exportExcel()
	{
		$nama_file = 'laporan_transaksi_perpustakaan_'.date('Y-m-d_H-i-s').'.xlsx';
		return Excel::download(new LaporanExport, $nama_file);
	}
	
	public function pdf()
	{
        $datas = Peminjaman::get();
        $pdf = PDF::loadView('laporan/pdf', compact('datas'));
        return $pdf->stream();
	}

}
