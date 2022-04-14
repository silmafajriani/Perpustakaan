
<div class="container-fluid">
<!-- DataTales Example -->
<br>
<br>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark">Data Siswa 
            <a href="beranda.php?page=anggota&aksi=add">
                <button class="btn btn-dark">Tambah Data</button>
            </a>
        </h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Nama Siswa</th> 
                        <th>Jenis Kelamin</th>
                        <th>Alamat</th>
                        <th>No Hp</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $sql  = "select * from tabel_anggota";
                        $show = $db->query($sql);

                        foreach($show as $agt):
                    ?>
                    <tr> 
                        <td><?php echo $agt['nama_anggota']?></td>
                        <td><?php echo $agt['jenis_kelamin']?></td>
                        <td><?php echo $agt['alamat']?></td>
                        <td><?php echo $agt['no_hp']?></td>
                        <td>
                            <a href="beranda.php?page=anggota&aksi=edit&id=<?php echo $agt['id_anggota']?>" 
                            class="btn btn-dark btn-circle">
                                        <i class="fas fa-edit"></i>
                                    </a>

                            <a href="model/anggota/prosesdeleteanggota.php?id=<?php echo $agt['id_anggota']?>" 
                            class="btn btn-danger btn-circle">
                                        <i class="fas fa-trash"></i>
                                    </a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

</div>