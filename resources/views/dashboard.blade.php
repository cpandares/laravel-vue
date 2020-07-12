@extends('app')

@section('content')

    <div id="crud" class="row">
        <div class="col-lg-12">
                <h1>Crud Laravel-Vuejs</h1> 
        </div>
           
        <div class="col-sm-7">
                <a href="" class="btn btn-primary float-right" data-toggle="modal" data-target="#create">Nueva tarea</a>
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>tarea</th>
                            <th class="colspan2">&nbsp;</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr v-for="keep in keeps"> 
                            <td>@{{ keep.id }}</td>
                            <td>@{{ keep.keep }}</td>
                            <td with="10px">
                                <a href="#" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit" @click.prevent="editKeep(keep)">Editar</a>
                            </td>

                            <td with="10px">
                                <a href="#" class="btn btn-danger btn-sm"  @click.prevent="deleteKeep(keep)">Eliminar</a>
                            </td>

                        </tr>
                    
                    </tbody>
                   
                </table>
            @include('create')
            @include('edit')

       
        </div>
      
        <div class="col-sm-5">
          <pre>
               @{{$data}}
          </pre>
        </div>
    </div>
@endsection