
<div class="right_col" role="main" id="view">
  <div class="">
    <div class="row">
      <div class="clearfix"></div> 
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_content">
            <div class="row top_tiles">
             <a href="">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background-color: #2d6aa0; border-color: #2d6aa0;">
                  <div class="icon" style="color: #fbfbfb"><i class="fa fa-building"></i></div>
                  <div class="count" style="color: #fbfbfb"><?php
                    foreach ($j_cabang as $key) {
                      echo $key->jumlah;
                    }
                  ?></div>
                  <h3 style="color: #fbfbfb">Cabang</h3>
                  <p style="color: #fbfbfb">Total Cabang</p>
                </div>
              </div>
            </a>
             <a href="">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background-color: #2d6aa0; border-color: #2d6aa0;">
                  <div class="icon" style="color: #fbfbfb"><i class="fa fa-file-o"></i></div>
                  <div class="count" style="color: #fbfbfb"><?php echo(rand(10,100)) ;?></div>
                  <h3 style="color: #fbfbfb">Transaksi baru</h3>
                  <p style="color: #fbfbfb">Transaksi Hari ini</p>
                </div>
              </div>
            </a>
             <a href="">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background-color: #2d6aa0; border-color: #2d6aa0;">
                  <div class="icon" style="color: #fbfbfb"><i class="fa fa-money"></i></div>
                  <div class="count" style="color: #fbfbfb"><?php echo(rand(10,100)) ;?></div>
                  <h3 style="color: #fbfbfb">Menunggu</h3>
                  <p style="color: #fbfbfb">Pembayaran</p>
                </div>
              </div>
            </a>
            <a href="">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background-color: #2d6aa0; border-color: #2d6aa0;">
                  <div class="icon" style="color: #fbfbfb"><i class="fa fa-truck"></i></div>
                  <div class="count" style="color: #fbfbfb"><?php echo(rand(10,100)) ;?></div>
                  <h3 style="color: #fbfbfb">Menunggu</h3>
                  <p style="color: #fbfbfb">Pengiriman</p>
                </div>
              </div>
            </a>
          </div> 
          <div class="col-md-9 col-sm-12 col-xs-12">
            <h2>Grafik Penjualan <small>Dalam satu tahun</small></h2>
            <div class="clearfix"></div>
            <div class="demo-container" style="height:300px">
              <canvas id="grafik_p"></canvas>
              </div>
          </div>
          <div class="col-md-3 col-sm-12 col-xs-12">
            <div>
              <div class="x_title">
                <h2>Produk Terbanyak Terjual</h2>
                <div class="clearfix"></div>
              </div>
              <ul class="list-unstyled top_profiles scroll-view">
                <li class="media event">
                  <a class="pull-left border-aero profile_thumb">
                    <i class="fa fa-user aero"></i>
                  </a>
                  <div class="media-body">
                    <a class="title" href="#" style="font-size: 14pt">Velg</a>
                    <p style="font-size: 12pt">Terjual sebanyak <strong><?php echo(rand(90,100)) ;?> </strong> </p>
                  </div>
                </li>
                <li class="media event">
                  <a class="pull-left border-green profile_thumb">
                    <i class="fa fa-user green"></i>
                  </a>
                  <div class="media-body">
                    <a class="title" href="#" style="font-size: 14pt">Fairing</a>
                    <p style="font-size: 12pt">Terjual sebanyak <strong><?php echo(rand(80,90)) ;?> </strong> </p>
                  </div>
                </li>
                <li class="media event">
                  <a class="pull-left border-blue profile_thumb">
                    <i class="fa fa-user blue"></i>
                  </a>
                  <div class="media-body">
                    <a class="title" href="#" style="font-size: 14pt">Lampu</a>
                    <p style="font-size: 12pt">Terjual sebanyak <strong><?php echo(rand(70,80)) ;?> </strong> </p>
                  </div>
                </li>
                <li class="media event">
                  <a class="pull-left border-aero profile_thumb">
                    <i class="fa fa-user aero"></i>
                  </a>
                  <div class="media-body">
                    <a class="title" href="#" style="font-size: 14pt">Cover Tank</a>
                    <p style="font-size: 12pt">Terjual sebanyak <strong><?php echo(rand(60,70)) ;?> </strong> </p>
                  </div>
                </li>
                <li class="media event">
                  <a class="pull-left border-green profile_thumb">
                    <i class="fa fa-user green"></i>
                  </a>
                  <div class="media-body">
                    <a class="title" href="#" style="font-size: 14pt">Rear Body</a>
                    <p style="font-size: 12pt">Terjual sebanyak <strong><?php echo(rand(50,60)) ;?> </strong> </p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="<?php echo base_url();?>assets/dash/vendors/Chart.js/dist/Chart.min.js"></script>
<script type="text/javascript">
  var randomScalingFactor = function() {
      return Math.round(Math.random() * 1000);
  }
  var ctx = document.getElementById("grafik_p");
  var config = {
    type: 'line',
    data: {
      labels: ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"],
      datasets: [{
      label: "Data penjualan",
      borderColor: "rgba(38, 185, 154, 0.7)",
      pointBorderColor: "rgba(38, 185, 154, 0.7)",
      pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
      pointHoverBackgroundColor: "#fff",
      pointHoverBorderColor: "rgba(220,220,220,1)",
      pointBorderWidth: 3,
      data: [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
      }]
    },
  };
  var newChart = new Chart(ctx, config);
</script>