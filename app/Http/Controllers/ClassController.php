<?php

namespace App\Http\Controllers;

use App\Models\ClassModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ClassController extends Controller
{
    function list() {

        $all_class = ClassModel::with('user')->where('is_delete', '=', 0)->orderBy('id', 'DESC')->get();

        return view('admin.class.list')->with(compact('all_class'));
        // return view('admin.class.list');
    }

    public function add()
    {
        return view('admin.class.add');
    }

    public function insertClass(Request $request)
    {
        // request()->validate([
        //     'email' => 'required|email|unique:users',
        // ]);
        $class = new ClassModel();
        $class->name = $request->name;
        $class->status = $request->status;
        $class->user_id = Auth::user()->id;
        $class->save();
        return redirect('admin/class/list')->with('success', 'Class successfully created ');
    }

    public function edit($id)
    {
        $data['getRecord'] = ClassModel::getClassId($id);

        return view('admin.class.edit', $data);
    }

    public function editClass(Request $request, $id)
    {
        $class = ClassModel::getClassId($id);
        $class->name = $request->name;
        $class->status = $request->status;
        $class->save();
        return redirect('admin/class/list')->with('success', 'Class successfully updated ');

    }

    public function delete($id)
    {
        $class = ClassModel::getClassId($id);
        $class->is_delete = 1;
        $class->save();
        return redirect('admin/admin/list')->with('success', 'Class successfully deleted ');
    }

}
