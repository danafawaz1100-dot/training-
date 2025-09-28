<?php
namespace App\Http\Controllers;

use App\Models\Donation;
use Illuminate\Http\Request;

class DonationController extends Controller
{
    public function index() {
        return Donation::with(['user','campaign','service'])->get();
    }

    public function store(Request $request) {
        $donation = Donation::create($request->all());
        return response()->json($donation, 201);
    }

    public function show($id) {
        return Donation::with(['user','campaign','service'])->findOrFail($id);
    }

    public function update(Request $request, $id) {
        $donation = Donation::findOrFail($id);
        $donation->update($request->all());
        return response()->json($donation);
    }

    public function destroy($id) {
        Donation::destroy($id);
        return response()->json(['message'=>'Deleted']);
    }
}
