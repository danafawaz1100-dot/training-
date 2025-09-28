<?php
namespace App\Http\Controllers;

use App\Models\Statistic;
use Illuminate\Http\Request;

class StatisticController extends Controller
{
    public function index() {
        return Statistic::latest()->first();
    }

    public function update(Request $request, $id) {
        $stat = Statistic::findOrFail($id);
        $stat->update($request->all());
        return response()->json($stat);
    }
}
