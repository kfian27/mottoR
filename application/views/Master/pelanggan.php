<!-- page content -->
<div class="right_col" role="main">
<div class="">
    <div class="x_panel">
        <div class="x_title">
          <h2> Pelanggan <small>form input </small></h2>
          <ul class="nav navbar-right panel_toolbox">
          <li><button id="tombol-tambah" class="btn btn-primary" onclick="javascript:tambah();"> Tambah <i class="fa fa-plus"></i></button>
          </li>
        </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <div class="row" id="detail">
          <div class="col-sm-12 col-xs-12 col-md-12">
            <div class="table-responsive">
              <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Nama Toko</th>
                    <th>Alamat</th>
                    <th>Kota</th>
                    <th>Harga Jual</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $a=1; foreach ($pelanggan_detail as $row): ?>
                <tr>
                    <td><?php echo $a; ?></td>
                    <td><?php echo $row->nm_plg;?></td>
                    <td><?php echo $row->alm_plg;?></td>
                    <td><?php echo $row->kota_plg; $a++; ?></td>
                    <td><?php echo $row->id_hargajual;?></td>
                    <td>
                        <button type="button" data-title='Delete' data-toggle='modal' onclick="javascript:konfirmasi('mplg/delete/<?php echo $row->id_plg; ?>');" class="btn btn-danger pull-right"> Hapus</button>
                        <button type="button" data-title='Edit' onclick="javasript:ubah('mplg/get_detail/<?php echo $row->id_plg; ?>')" class="btn btn-primary pull-right"> Edit</button>
                    </td>
                </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
          <div class="clearfix"></div>
          <div class="row" id="form-tambah" id="form-tambah" style="display: none;">
          <form class="form-horizontal"  method="post" id="detail-tambah" name="detail-tambah" enctype="multipart/form-data">
            <input type="hidden" name="id_plg" id="id_plg">
            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label for="tiga" class="col-sm-2 control-label"> Nama Toko/Pelanggan </label>
                <div class="col-md-10 col-sm-10 col-xs-10">
                  <input type="text" class="form-control" placeholder="Nama Toko" name="nm_plg" id="nm_plg" required>
                </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label for="tiga" class="col-sm-2 control-label"> Alamat </label>
                <div class="col-md-10 col-sm-10 col-xs-10">
                  <input type="text" class="form-control" placeholder="Alamat" name="alm_plg" id="alm_plg" required>
                </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
              <label for="tiga" class="col-sm-2 control-label"> Kota </label>
              <div class="col-md-10 col-sm-10 col-xs-10">
                <input type="text" class="form-control" placeholder="Kota" name="kota_plg" id="kota_plg" required>
                <!-- <select class="form-control" name="kota_plg" id="kota_plg" required="required">
                  <option value="0">-pilih produk-</option>
                </select> -->
              </div>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
              <label for="tiga" class="col-sm-2 control-label"> Harga Jual </label>
              <div class="col-md-10 col-sm-10 col-xs-10">
                <select class="form-control" name="id_hargajual" id="id_hargajual" required="required">
                  <option value="0">-pilih harga-</option>
                  <option value="umum">Umum</option>
                  <option value="partai">Partai</option>
                  <option value="freelance">freelance</option>
                </select>
              </div>
            </div>
            <div class="ln_solid"></div>
                <div class="form-group">
                  <div class="col-md-6 col-sm-6 col-xs-12 pull-right">
                    <button class="btn btn-primary" type="button" onclick="javascript:cancel();">Cancel</button>
                    <button class="btn btn-primary" type="reset">Reset</button>
                    <button type="submit" class="btn btn-success" onclick="javascript:simpan('mplg/coba_insert');" id="save" name="save">Submit</button>
                  </div>
                </div>
            </form>
          </div>
        </div>
        </div>
      </div>
    <div class="clearfix"></div>
  </div>
<!-- end page content -->
<script type="text/javascript">
function tambah(){
  $('#detail').hide();
  $('#form-tambah').show();
  $('#tombol-tambah').attr('disabled',true);
  $('#nm_cabang').val("");
}
function cancel(){
  $('#detail').show();
  $('#form-tambah').hide();
  $('#tombol-tambah').attr('disabled',false);
}
function simpan(url){
  $('#save').val('saving . . ');
  $('#save').attr('disabled',true);
  $("#detail-tambah").click(function(evt){
      evt.preventDefault();
      var formData = new FormData($(this)[0]);
      $.ajax({
          url: "<?php echo base_url()?>" + url,
          type: 'POST',
          data: formData,
          async: false,
          cache: false,
          contentType: false,
          enctype: 'multipart/form-data',
          processData: false,
          success: function (response) {
            swal("Data telah tersimpan", {
              icon: "success",
              buttons: true
            });
            location.reload();
          }
      });
      return false;
  });
}
function hapus(url){
  $.ajax({
      url : "<?php echo base_url()?>" + url,
      type : 'post',
      dataType : 'json',
      success : function(data)
      {
          if(data.status == 'ok')
          {
              location.reload();
          }
      },
      error : function(res)
      {
          show_message('Gagal',(res.responseText));
      }
  });
}
function ubah(url){
  $.ajax({
      url : "<?php echo base_url()?>" + url ,
      type : 'post',
      dataType : 'json',
      success : function(data)
      {
          $('#detail').hide();
          $('#id_plg').val(data.data.id_plg);
          $('#nm_plg').val(data.data.nm_plg);
          $('#alm_plg').val(data.data.alm_plg);
          $('#kota_plg').val(data.data.kota_plg);
          $('#id_hargajual').val(data.data.id_hargajual);
          $('#id_hargajual').select2({width:'100%'}).trigger('change');
          $('#form-tambah').show();
      },
      error : function(res)
      {
          show_message('Gagal',(res.responseText));
      }
  });
}
function konfirmasi(url){
  url : url;
  swal({
  title: "Apa anda yakin ?",
  text: "Data akan terhapus secara permanen",
  icon: "warning",
  buttons: true,
  dangerMode: true,
  })
  .then((willDelete) => {
    if (willDelete) {
      swal("Data telah tehapus!", {
        icon: "success",
      });
      return hapus(url);
    } else {
      swal("Batal menghapus data!");
    }
  });
}
</script>