<?php 
    @$id = $_GET['id'];

    $sql    = "select * from tabel_buku where id_buku=$id";
    $show   = $db->query($sql);
    $hasil  = mysqli_fetch_assoc($show);
    

   
?>
<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="table-responsive">
                        <h4>Edit Data Buku</h4>
                        <br>
                        <form action="model/buku/prosesupdatebuku.php" method="POST">
                            <input type="hidden" name="id_buku" id="id_buku" value="<?php echo $hasil['id_buku']?>">
                            <table class="table">
                                <tr>
                                    <td>Isbn</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="isbn" id="isbn"
                                            value="<?php echo $hasil['isbn']?>">
                                    </td>
                                </tr>
                                <tr>

                                    <td>Nama Buku</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="nama_buku" id="nama_buku"
                                            value="<?php echo $hasil['nama_buku']?>"></td>
                                </tr>
                                <tr>
                                    <td>Penerbit</td>
                                    <td>:</td>
                                    <td><input class="form-control" name="penerbit" id="pnerbit" value="<?php echo  $hasil['penerbit']?>"></td>
                                </tr>
                                <tr>
                                    <td>Penulis</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="penulis" id="penulis"
                                            value="<?php echo $hasil['penulis']?>"></td>
                                </tr>
                                <tr>
                                <tr>
                                    <td>Tahun Terbit</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="tahun_terbit" id="tahun_terbit"
                                            value="<?php echo $hasil['tahun_terbit']?>"></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <input type="submit" class="btn btn-dark" value="Update">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>