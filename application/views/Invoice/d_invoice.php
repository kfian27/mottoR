<?php date_default_timezone_set("asia/jakarta") ?>
<div class="right_col" role="main">
<div class="">
    <div class="x_panel">
        <div class="x_title">
          <a href="<?php echo base_url()?>/invoice/l_invoice/" class="btn btn-success"><i class="fa fa-angle-left"></i> Kembali </a>
          <div class="nav navbar-right ">
            <a class="btn btn-info" onclick="print_areannya()"><i class="fa fa-print"></i> Cetak</a>
          </div>
        </div>
        <div class="x_content">
          <div class="row" id="detail">
            <div class="col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
              <br>
              <h2 style="text-decoration: underline; font-weight: bold; font-style: italic;">MOTTO RACING</h2>
              <h2 style="text-decoration: bold;">SURABAYA</h2>
              <H2>031 2739 323</H2>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
              <table height="50px;" class="table-bordered" style="text-align: center; font-size: 12pt; margin-bottom: 20px;" cellpadding="5" cellspacing="2" width="100%">
                  <tr>
                    <td>SBY</td>
                    <td><?php echo date('d M Y');?></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>KEPADA YTH</td>
                  </tr>
                  <?php $nomernya = ""; ?>
                  <?php foreach ($data_invoice as $key) :?>
                    <tr>
                      <td>TOKO</td>
                      <td><?php echo $key->nm_invoice; ?></td>
                    </tr>
                   <tr>
                      <td>ALAMAT</td>
                      <td><?php echo $key->alm_invoice; ?></td>
                    </tr>
                   <tr>
                      <td>KOTA</td>
                      <td><?php echo $key->kota_invoice; ?></td>
                    </tr>
                    <?php $nomernya = $key->no_invoice; ?>
                  <?php endforeach; ?>
              </table>
            </div>
            <div class="col-sm-12 col-xs-12 col-md-12">
              <div class="table-responsive">
                <h2 style="font-weight: bold;">No : <?php echo $nomernya;?></h2>
                <table id="tablenya" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>Nama Barang</th>
                      <th>Qty</th>
                      <th>Harga (Satuan)</th>
                      <th>Jumlah</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($invoice_detail as $key): ?>
                    <tr>
                      <td><?php echo $key->nm_produk; ?></td>
                      <td><?php echo $key->qty_di; ?></td>
                      <td><?php echo $key->total_di/$key->qty_di; ?></td>
                      <td><?php echo $key->total_di; ?></td>
                      <?php $total_harga = $key->harga_invoice; ?>
                      <?php $bayar = $key->byr_invoice; ?>
                    </tr>
                    <?php endforeach; ?>
                    <tr>
                      <td colspan="3" style="text-align: center;">Total</td>
                      <td><?php echo $total_harga;?></td>
                    </tr>
                    <tr>
                      <td colspan="3" style="text-align: center;">Bayar</td>
                      <td><?php echo $bayar;?></td>
                    </tr>
                    <!-- <tr>
                      <td colspan="3" style="text-align: center;">Kembalian</td>
                      <td><?php echo (int)$bayar - (int)$total_harga;?></td>
                    </tr> -->
                  </tbody>
                </table>
              </div>
            </div>
          <div class="col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
            <br>
            <h5 style="text-decoration: underline; font-weight: bold; font-style: italic;">Tanda terima</h5>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6" style="text-align: center;">
            <br>
            <h4 style="text-decoration: underline; font-weight: bold;">Hormat Kami</h4>
            <h5 style="font-weight: bold; font-style: italic;">Motto Racing</h5>
            <br>
            <br>
            <br>
            <br>
          </div>
          </div>
          <div class="clearfix"></div>
        </div>
        </div>
      </div>
    <div class="clearfix"></div>
  </div>
  <script type="text/javascript">
    // $(document).ready(function() {
    //   var isi = "detail"
    //   print_areannya();
    // });
    function print_areannya() {
      var printContent = $('#detail').html();
      var content = document.body.innerHTML;
      document.body.innerHTML = printContent;
      window.print();
      document.body.innerHTML = content;
    } 
  </script>
  <!-- end page content