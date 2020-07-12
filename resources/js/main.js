

 new Vue({
    el :'#crud',
    created(){
        this.getKeeps();
    },
    data: {
        keeps: [],
        newKeep:'',
        fillKeep:{'id':'', 'keep':''},
        errors:[]
    },
    methods: {
        getKeeps(){
           
            var urlKeeps = 'tasks';
            axios.get(urlKeeps).then(response=>{
                this.keeps = response.data.tasks.data
            })

        },

        deleteKeep(keep){
            var url = 'tasks/'+ keep.id;
            axios.delete(url).then(response=>{
                this.getKeeps();
                alert("TAREA ELIMINADA");
            })
        },
        editKeep(keep){
            this.fillKeep.id = keep.id;
            this.fillKeep.keep = keep.keep;
        },
        createKeep(){
           var url = 'tasks';
           axios.post(url, {
            keep: this.newKeep
           }).then(response=>{
               this.getKeeps();
               this.newKeep= '';
               this.errors= [];
               $('#create').modal('hide');
               alert("Tarea Guardada");
           }).catch(error=>{
               this.errors = error.response.data
           })
        },
        updateKeep(id){
            var url = 'tasks/' + id;
            axios.put(url, this.fillKeep).then(response=>{
                this.getKeeps();
                this.fillKeep = {'id':'', 'keep':''};
                this.errors = [];
                $('#edit').modal('hide');
                alert("Tarea Actualizada");
            }).catch(error=>{
                this.errors = error.response.data
            })
        }
        
    }
})