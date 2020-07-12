<form method="POST" class="form-group" @submit.prevent="updateKeep(fillKeep.id)" >
      <div class="modal fade" id="edit"  role="dialog" >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="edit">Actualizar Tarea</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <label for="keep">Editar Tarea</label>
                  <input type="text" name="keep" class="form-control" v-model="fillKeep.keep" >
                  <span v-for="error of errors" class="text-danger">@{{ error }}</span>
              
            
            </div>
            <div class="modal-footer">
            
              <input type="submit" class="btn btn-primary" value="Guardar">
            </div>
          </div>
        </div>
      </div>
  </form>