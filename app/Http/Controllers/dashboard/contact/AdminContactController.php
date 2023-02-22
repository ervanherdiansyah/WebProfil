<?php

namespace App\Http\Controllers\dashboard\contact;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use Alert;
use App\ModelAdminContact;
use Illuminate\Support\Facades\Storage;

class AdminContactController extends Controller
{
    public function index()
    {
        $contact = ModelAdminContact::get();
        return view('dashboard.contact.contact',compact('contact'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Request()->validate([
            'nama' => 'required',
            'nomor' => 'required',
        ], [
            'nama.required' => 'Wajib diisi!!!',
            'nomor.required' => 'Wajib diisi!!!',
        ]);

        ModelAdminContact::create([
            'nama' => $request->nama,
            'nomor' => $request->nomor,
        ]);
        Alert::success('Data berhasil ditambahkan', 'Success Message');
        return redirect("/admin/contact");
    }
    public function update(Request $request, $id)
    {
        Request()->validate([
            'nama' => 'required',
            'nomor' => 'required',
        ], [
            'nama.required' => 'Wajib diisi!!!',
            'nomor.required' => 'Wajib diisi!!!',
        ]);

        $data = [
            'nama' => $request->nama,
            'nomor' => $request->nomor,
        ];
        ModelAdminContact::find($id)->update($data);
        
        Alert::success('Data berhasil diubah', 'Berhasil');
        return redirect("/admin/contact");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ModelAdminContact::find($id)->delete();
        Alert::success('Data berhasil dihapus', 'Berhasil');
        return redirect('/admin/contact');
    }
}
