<?php
    include 'header.php';
    include '../koneksi.php';
?>

<div class="container">
    <div class="alert alert-info text-center">
        <h4><b>Selamat Datang</b> di sistem informasi Laundry</h4>
    </div>

    <div class="panel">
        <div class="panel-heading">
            <h4>Dashboard</h4>
        </div>
        <div class="panel-body">
            <div class="row">

                <div class="col-md-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h1>
                                <i class="glyphicon glyphicon-user"></i>
                                    <span class="pull-right">
                                        <?php
                                            $pelanggan = mysqli_query($koneksi,"select * from pelanggan"); echo mysqli_num_rows($pelanggan);
                                        ?>
                                    </span>
                            </h1>
                            Jumlah Pelanggan
                        </div>
                    </div>
                </div>

                </div>
            </div>
        </div>
    </div>
</div>