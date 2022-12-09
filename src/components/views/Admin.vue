<template>
  <section class="content">
    <div class="row center-block">
      <h2>Data tables</h2>
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">Data Table With Full Features</h3>
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
                        <th aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending"
                          style="width: 167px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0"
                          class="sorting_asc">Email</th>
                        <th aria-label="Browser: activate to sort column ascending" style="width: 207px;" colspan="1"
                          rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Nombres</th>
                        <th aria-label="Engine version: activate to sort column ascending" style="width: 142px;"
                          colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Apellidos
                        </th>
                        <th aria-label="Platform(s): activate to sort column ascending" style="width: 182px;"
                          colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Instagram</th>
                        <th aria-label="CSS grade: activate to sort column ascending" style="width: 101px;" colspan="1"
                          rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Rol</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="even" role="row" v-for="(user, index) in users" :key="index">
                        <td class="sorting_1">{{ user.email }}</td>
                        <td>{{ user.first_name }}</td>
                        <td>{{ user.last_name }}</td>
                        <td>{{ user.instagram }}</td>
                        <td>{{ user.role }}</td>
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
  </section>
</template>

<script>
import $ from 'jquery'
import api from '../../api'

// Require needed datatables modules
require('datatables.net')
require('datatables.net-bs')

export default {
  name: 'Tables',
  data() {
    return { users: [] }
  },
  mounted() {
    this.$nextTick(() => {
      const params = new URLSearchParams()
      params.append('role', 3)
      api
        .request('get', 'users/?' + params.toString(), {}, { 'Authorization': localStorage.getItem('token') })
        .then(response => {
          this.users = response.data.results
          setTimeout(() => { $('#tableUsers').DataTable() }, 2000)
        })
        .catch(console.log)
    })
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
