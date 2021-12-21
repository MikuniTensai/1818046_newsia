<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\BeritaResource;
use App\Models\Berita;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BeritaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Berita::latest()->get();
        return response()->json([BeritaResource::collection($data), 'Berita fetched.']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'title' => 'required|string|max:255',
            'desc' => 'required'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $berita = Berita::create([
            'title' => $request->title,
            'desc' => $request->desc
         ]);

        return response()->json(['Berita created successfully.', new BeritaResource($berita)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $berita = Berita::find($id);
        if (is_null($berita)) {
            return response()->json('Data not found', 404);
        }
        return response()->json([new BeritaResource($berita)]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Berita $berita)
    {
        $validator = Validator::make($request->all(),[
            'title' => 'required|string|max:255',
            'desc' => 'required'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $berita->title = $request->title;
        $berita->desc = $request->desc;
        $berita->save();

        return response()->json(['Berita updated successfully.', new BeritaResource($berita)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Berita $berita)
    {
        $berita->delete();

        return response()->json('Berita deleted successfully');
    }
}
