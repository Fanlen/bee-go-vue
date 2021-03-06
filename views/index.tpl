<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="context-type"  content="text/html"; charset="utf-8">
  <title>Go-beego-vue</title>

  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/vue/1.0.24/vue.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue-resource/0.7.0/vue-resource.min.js"></script>
</head>
<body>

    <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1>My Tasks</h1>

            <div class="input-group">
              <input type="text" class="form-control" placeholder="New Task" v-on:keyup.enter="createTask" v-model="newTask.name" autofocus>
              <span class="input-group-btn">
                  <button class="btn btn-primary" type="button" v-on:click="createTask">Create</button>
              </span>
            </div>

            <br>
            <h2 style="color: red">On Going</h2>
              <div v-for="task in tasks" style="margin-bottom: 10px">
                  <div v-if="task.done===false" class="input-group">
                      <span class="input-group-btn">
                        <button class="btn btn-info" type="button" :disable="task.done===true" v-on:click="updateTask(task,true)"><i class="fa fa-check" aria-hidden="true"></i></button>
                      </span>

                      <input type="text" class="form-control" :disable="task.done===true" v-model="task.name" v-on:keyup.enter="updateTask(task)">

                      <span class="input-group-btn"> 
                        <button class="btn btn-info" type="button" v-on:click="updateTask(task)"><i class="fa fa-edit" aria-hidden="true"></i></button>
                        <button class="btn btn-danger" type="button" v-on:click="deleteTask(task.id)"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                      </span>
                  </div>
              </div>

               <br>
               <h2 style="color: green">Completed</h2>
               <div v-for="task in tasks" style="margin-bottom: 5px">
                  <div v-if="task.done===true" class="input-group">
                    <span class="input-group-btn">
                      <button class="btn btn-info" type="button" :disable="task.done===true" v-on:click="updayeTask(task,true)"><i class="fa fa-check" aria-hidden="true"></i></button>
                    </span>

                    <input type="text" class="form-control" :disable="task.done===true" v-model="task.name" v-on:keyup.enter="updayeTask(task)">

                    <span class="input-group-btn">
                      <button class="btn btn-info" type="button" :disable="task.done===true" v-on:click="updayeTask(task)"><i class="fa fa-edit" aria-hidden="true"></i></button>
                      <button class="btn btn-danger" type="button" v-on:click="deleteTask(task.id)"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                    </span>
                  </div>  
               </div>

          </div>
        </div>
    </div>
<script type="text/javascript" src="static/js/app.js"></script>
</body>
</html>