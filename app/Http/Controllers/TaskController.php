<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Task;
class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $tasks = Task::orderBy('id', 'desc')->paginate(5);

       return ['paginate'=>[
           'total'=>$tasks->total(),
           'current_page'=>$tasks->currentPage(),
           'per_page'=>$tasks->perPage(),
           'last_page'=>$tasks->lastPage(),
           'from'=>$tasks->firstItem(),
           'to'=>$tasks->lastItem()

       ], 'tasks'=>$tasks];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //Formulario Crear
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = $this->validate($request,[
            'keep'=>['required']
        ]);

       
       Task::create($request->all());
        return;
    }

    
    public function edit($id)
    {
        $task = Task::findOrFail($id);

        return  $task;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $task = Task::find($id);

       $validate = $this->validate($request,[
        'keep'=>['required']
        ]);

        $task->keep = $request->input('keep');

        $task->update();

        return;

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $task = Task::findOrFail($id);

        $task->delete();
    }
}
