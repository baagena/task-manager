<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TaskController extends Controller
{
    //
    public function index(Request $request) {
        return response()->json(['status' => 'success', 'data' => $request->user()->tasks]);
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'note' => 'nullable|string',
            'status' => 'nullable|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'message' => $validator->errors()], 400);
        }

        $task = $request->user()->tasks()->create($request->all());

        return response()->json(['status' => 'success', 'message' => 'Task created', 'data' => $task]);
    }

    public function update(Request $request, $id) {
        $task = $request->user()->tasks()->findOrFail($id);

        $task->update($request->only(['title', 'note', 'status']));

        return response()->json(['status' => 'success', 'message' => 'Task updated', 'data' => $task]);
    }

    public function destroy(Request $request, $id) {
        $task = $request->user()->tasks()->findOrFail($id);
        $task->delete();

        return response()->json(['status' => 'success', 'message' => 'Task deleted']);
    }
}
