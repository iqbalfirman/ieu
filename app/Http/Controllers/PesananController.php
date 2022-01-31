<?php

namespace App\Http\Controllers;
use App\Models\{Pesanan,DetailPesanan};
use Illuminate\Http\Request;

class PesananController extends Controller
{
    //
    public function simpanPesanan(Request $req){
    //generate code booking
    $today = date("Ymd");

    // Get the last created order
    $lastBooking = Pesanan::orderBy('id', 'desc')->first();
    // We get here if there is no order at all
    // If there is no number set it to 0, which will be 1 at the end.
    if (!$lastBooking)
        $number = 0;
    else
        $number = substr($lastBooking->no_pesanan, 8);

    // If we have 201802110001 in the database then we only want the number
    // So the substr returns this 0002
    $lastTrx = $today . sprintf('%04d', intval($number) + 1);

    //store to booking
    $booking = Pesanan::create([
        'no_pesanan'    => $lastTrx,
        'nama'          => $req->get('nama_pemesan'),
        'meja'       => $req->get('no_meja'),
        'total'         => $req->get('total')
    ]);
    $bookingDetail = json_decode($req->menu);
    foreach ($bookingDetail as $i => $mn) {
        $detail = new DetailPesanan();
        $detail->no_pesanan = $booking->no_pesanan;
        $detail->menu = $mn->nama;
        $detail->jml = $mn->jml;
        $detail->harga = $mn->harga;
        $detail->save();
    }
    $response=[ 'statusCode'=>200,
    'message' => 'Booking berhasil dibuat '
    ];

    return response()->json(['result'=>$response], 200);
    }
}
