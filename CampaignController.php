// app/Http/Controllers/CampaignController.php
namespace App\Http\Controllers;

use App\Models\Campaign;
use Illuminate\Http\Request;

class CampaignController extends Controller
{
    public function index() {
        return Campaign::all();
    }

    public function store(Request $request) {
        $campaign = Campaign::create($request->all());
        return response()->json($campaign, 201);
    }

    public function show($id) {
        return Campaign::findOrFail($id);
    }

    public function update(Request $request, $id) {
        $campaign = Campaign::findOrFail($id);
        $campaign->update($request->all());
        return response()->json($campaign);
    }

    public function destroy($id) {
        Campaign::destroy($id);
        return response()->json(['message'=>'Deleted']);
    }
}
