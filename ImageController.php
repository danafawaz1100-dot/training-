<?php
namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function index() {
        return Image::all();
    }

    public function store(Request $request) {
        $image = Image::create($request->all());
        return response()->json($image, 201);
    }

    public function show($id) {
        return Image::findOrFail($id);
    }

    public function destroy($id) {
        Image::destroy($id);
        return response()->json(['message'=>'Deleted']);
    }
}
