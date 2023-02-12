<?php

namespace App\Http\Controllers\dashboard\tentang\selayangpandang;

use App\Http\Controllers\Controller;
use App\ModelSambutan;
use Illuminate\Http\Request;
Use Alert;
use App\ModelBackground;
use Illuminate\Support\Facades\Storage;

class AdminSelayangPandangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexsambutan()
    {
        $sambutan = ModelSambutan::get();
        return view('dashboard.tentangisteq.selayangpandang.selayangpandang',compact('sambutan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function createsambutan()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storesambutan(Request $request)
    {
        Request()->validate([
            'gambar' => 'required',
            'nama' => 'required',
            'sambutan' => 'required',
        ], [
            'gambar.required' => 'Wajib diisi!!!',
            'nama.required' => 'Wajib diisi!!!',
            'sambutan.required' => 'Wajib diisi!!!',
        ]);

        $file_name = $request->gambar->getClientOriginalName();
        $image = $request->gambar->storeAs('public/gambar', $file_name);
            // $image = $request->poto->store('thumbnail');
        ModelSambutan::create([
            'gambar' => "gambar/".$file_name,
            'nama' => $request->nama,
            'sambutan' => $request->sambutan,
        ]);
        Alert::success('Data berhasil ditambahkan', 'Success Message');
        return redirect("/admin/tentang/selayangpandang/sambutan");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showsambutan($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function editsambutan($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updatesambutan(Request $request, $id)
    {
        Request()->validate([
            'nama' => 'required',
            'sambutan' => 'required',
        ], [
            'nama.required' => 'Wajib diisi!!!',
            'sambutan.required' => 'Wajib diisi!!!',
        ]);

        $home = ModelSambutan::find($id);
        if (Request()->hasFile('gambar')) {
            if (Storage::exists($home->gambar)) {
                Storage::delete($home->gambar);
            }
            $file_name = $request->gambar->getClientOriginalName();
            $image = $request->gambar->storeAs('public/gambar', $file_name);
                // $image = $request->poto->store('thumbnail');
            $home->update([
                'gambar' => "gambar/".$file_name,
                'nama' => $request->nama,
                'sambutan' => $request->sambutan,
            ]);
        } else {
            $home->update([
                'nama' => $request->nama,
                'sambutan' => $request->sambutan,
            ]);
        }
        
        Alert::success('Data berhasil diubah', 'Berhasil');
        return redirect("/admin/tentang/selayangpandang/sambutan");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroysambutan($id)
    {
        ModelSambutan::find($id)->delete();
        Alert::success('Data berhasil dihapus', 'Berhasil');
        return redirect('/admin/tentang/selayangpandang/sambutan');
    }

}
