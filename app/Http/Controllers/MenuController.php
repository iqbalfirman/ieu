<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;
use Intervention\Image\Facades\Image;
class MenuController extends Controller
{
    //
    protected $uploadPath;
    //
    public function __construct()
    {
        // parent::__construct();
        $this->uploadPath = public_path('/uploads/img/menu');
    }

    public function simpanMenu(Request $req){
        $data = $this->uploadImage($req);
        Menu::create($data);
        $response=[ 'statusCode'=>200,
        'message' => 'Data berhasil diinput',
        ];

        return response()->json(['result'=>$response], 200);
    }

    public function tampilMenu(){
        $data = menu::get();
        $response=[ 'statusCode'=>200,
        'message' => 'Anda berhasil menampilkan data',
        'data' => $data
        ];

        return response()->json(['result'=>$response], 200);
    }

    
    private function uploadImage($req)
    {
        $data = $req->all();
    
         //jika field foto ada
        if ($req->hasFile('img'))
        {
            $image       = $req->file('img');
            $fileName    = date('YmdHis_').$image->getClientOriginalName();
            $destination = $this->uploadPath;
            // simpan foto pada direktori img
            Image::make($image)->save($destination . '/' . $fileName);
             $data['gambar'] = $fileName;
        }
        return $data;
    }

    public function getImage($name)
    {
         $image_path = $this->uploadPath . '/' . $name;
    if (file_exists($image_path)) {
         $file = file_get_contents($image_path);
        return response($file, 200)->header('Content-Type', 'image/jpeg');
        }
    $res['success'] = false;
    $res['message'] = "Image not found";
       
    return $res;
    }
}
