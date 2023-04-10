<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Print</title>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/core-admin/core-component/font-awesome/css/font-awesome.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: arial, tahoma, verdana;
            font-size: 12px;
        }

        .page-header {
            margin: 0 auto;
            padding: 0 auto;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            margin: 1%;
            width: 98%;
            border-collapse: collapse;
        }

        td {
            font-size: 12px;
        }

        table,
        td,
        th {
            border: 1px solid #000;
        }

        td,
        th {
            padding: 5px;
        }

        th {
            font-size: 12px;
            background-color: #f0f0f0;
        }

        .noborder {
            border: none;
        }

        #print {
            padding: 5px;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .bg-red {
            background-color: #e51c23 !important;
            color: #fff !important;
        }

        @media print {
            #print {
                display: none;
            }
        }
    </style>
</head>

<body>
    <div id="print">
        <a href="javascript:window.print();">Print</a>
    </div>
    <div class="page-header">
        <h3><?= strtoupper('Jadwal Kelas ' . $jadwal[0]['kelas_level'] . ' ' . $jadwal[0]['kelas_nama']) ?></h3>
    </div>


    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-striped table-bordered nowrap table-font-sm" id="simpleTable" style="width:100% !important; font-size:12px">
                            <thead>
                                <tr>
                                    <th>Jam\Hari</th>
                                    <th>Senin</th>
                                    <th>Selasa</th>
                                    <th>rabu</th>
                                    <th>Kamis</th>
                                    <th>Jumat</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1;
                                $jam[1] = '08.00-08.45';
                                $jam[2] = '08.45-09.30';
                                $jam[3] = '09.30-10.15';
                                $jam[4] = '10.15-11.00';
                                $jam[5] = '11.00-11.45';
                                $jam[6] = '11.45-12.30';
                                $jam[7] = '12.30-13.15';
                                $jam[8] = '13.15-14.00';
                                $jam[9] = '14.00-14.45';
                                $jam[10] = '14.45-15.30';
                                $jam[11] = '15.30-16.15';
                                $labelDay = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];

                                ?>
                                <?php foreach ($jam as $ja => $waktu) { ?>
                                    <?php if ($ja == 1) { ?>
                                        <tr>
                                            <td><?php echo $waktu ?></td>
                                            <td>Apel Pagi</td>
                                            <td>Apel Pagi</td>
                                            <td>Apel Pagi</td>
                                            <td>Apel Pagi</td>
                                            <td>Apel Pagi</td>
                                        </tr>
                                    <?php } elseif ($ja == 6) { ?>
                                        <tr>
                                            <td><?php echo $waktu ?></td>
                                            <td>Jam Istirahat</td>
                                            <td>Jam Istirahat</td>
                                            <td>Jam Istirahat</td>
                                            <td>Jam Istirahat</td>
                                            <td>Jam Istirahat</td>
                                        </tr>
                                    <?php } else { ?>
                                        <tr>
                                            <td><?php echo $waktu ?></td>
                                            <?php
                                            foreach ($labelDay as $day) {
                                                foreach ($jadwal as $jdl) {
                                                    if ($jdl['hari'] == $day && $ja == $jdl['jp_urutan']) {
                                                        echo '<td>' . $jdl["mapel_nama"] . '<br>' . $jdl["guru_nama"] . '</td>';
                                                    }
                                                }
                                            ?>

                                            <?php }  ?>
                                        </tr>
                                    <?php } ?>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <script>
                        $(document).ready(function() {
                            $('#simpleTable').DataTable({
                                "pageLength": 50
                                // "lengthChange": false,
                                // "searching" : false,
                            });
                        });
                    </script>

                </div>
            </div>
        </div>
    </div>

</body>

</html>