<template>
  <section class="content">
    <div class="row center-block">
      <h2></h2>
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"></h3>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalUserLabel"><i
                class="fa fa-plus"> </i> Agregar Nuevo</button>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <div class="dataTables_wrapper form-inline dt-bootstrap" id="example1_wrapper">
              <div class="row">
                <div class="col-sm-6">
                  <div id="example1_length" class="dataTables_length">

                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-12 table-responsive">
                  <table aria-describedby="example1_info" role="grid" id="tableUsers"
                    class="table table-bordered table-striped dataTable">
                    <thead>
                      <tr role="row">
                        <th aria-sort="ascending"
                          style="width: 167px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0"
                          class="sorting_asc">Email</th>
                        <th style="width: 207px;" colspan="1"
                          rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Nombres</th>
                        <th style="width: 142px;"
                          colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Apellidos
                        </th>
                        <th style="width: 182px;"
                          colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Instagram</th>
                        <th style="width: 101px;" colspan="1"
                          rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Rol</th>
                        <th  style="width: 101px;" colspan="1"
                          rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="even" role="row" v-for="(user, index) in users" :key="index">
                        <td class="sorting_1">{{ user.email }}</td>
                        <td>{{ user.first_name }}</td>
                        <td>{{ user.last_name }}</td>
                        <td>{{ user.instagram }}</td>
                        <td>{{ user.role }}</td>
                        <td>
                          <button class="btn"><i class="fa fa-trash"></i></button>
                          <button class="btn" v-on:click="editUser"><i class="fa fa-edit"></i></button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="modalUserLabel" tabindex="-1" role="dialog" aria-labelledby="modalUserLabel"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalUserLabel">Nuevo Usuario</h5>
            <button type="button" class="close" id="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="email" class="col-form-label">Email:</label>
                <input type="text" class="form-control" id="email" v-model="user.email" required>
                <div v-if=error.email class="text-red">
                  <p>{{ error.email }}</p>
                </div>
              </div>
              <div class="form-group">
                <label for="first_name" class="col-form-label">Nombres:</label>
                <input class="form-control" id="first_name" v-model="user.first_name" />
              </div>
              <div class="form-group">
                <label for="last_name" class="col-form-label">Apellidos:</label>
                <input class="form-control" id="last_name" v-model="user.last_name" />
              </div>
              <div class="form-group">
                <label for="instagram" class="col-form-label">Instagram:</label>
                <input class="form-control" id="instagram" v-model="user.instagram" />
              </div>
              <div class="form-group">
                <input class="form-control" id="role" type="hidden" v-model="user.role" />
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="button" class="btn btn-primary" v-on:click="saveUser">Guardar</button>
          </div>
        </div>
      </div>
    </div>
  </section>

</template>

<script>
import $ from 'jquery'
import api from '../../api'
import util from '../../utils/util'

// Require needed datatables modules
require('datatables.net')
require('datatables.net-bs')

export default {
  name: 'Admins',
  data() {
    return {
      user: {
        email: '',
        first_name: '',
        last_name: '',
        instagram: '',
        role: util.TALENT
      },
      error: {
        email: '',
        first_name: '',
        last_name: '',
        instagram: ''
      },
      users: []
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.callUser()
    })
  },
  methods: {
    saveUser() {
      api
        .request('post', 'users/', this.user, { 'Authorization': localStorage.getItem('token') })
        .then(response => {
          this.callUser()
          $('#close').trigger('click')
        })
        .catch(console.log)
    },
    editUser() {
      $('#modalUserLabel').modal('show')
    },
    callUser() {
      const params = new URLSearchParams()
      params.append('role', util.TALENT)
      api
        .request('get', 'users/?' + params.toString(), {}, { 'Authorization': localStorage.getItem('token') })
        .then(response => {
          this.users = response.data.results
          setTimeout(() => {
            $('#tableUsers').DataTable({
              'language': {
                'url': '//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json'
              }
            })
          }, 1000)
        })
        .catch(console.log)
    }
  }
}
</script>

<style>
/* Using the bootstrap style, but overriding the font to not draw in
   the Glyphicons Halflings font as an additional requirement for sorting icons.

   An alternative to the solution active below is to use the jquery style
   which uses images, but the color on the images does not match adminlte.

@import url('/static/js/plugins/datatables/jquery.dataTables.min.css');
*/

@import url('/static/js/plugins/datatables/dataTables.bootstrap.css');

table.dataTable thead .sorting:after,
table.dataTable thead .sorting_asc:after,
table.dataTable thead .sorting_desc:after {
  font-family: 'FontAwesome';
}

table.dataTable thead .sorting:after {
  content: '\f0dc';
}

table.dataTable thead .sorting_asc:after {
  content: '\f0dd';
}

table.dataTable thead .sorting_desc:after {
  content: '\f0de';
}
</style>
