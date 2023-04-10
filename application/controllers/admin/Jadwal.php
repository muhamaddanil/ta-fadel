<?php
class Jadwal extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/M_kelas');
        $this->load->model('admin/M_guru');
        $this->load->model('admin/M_pelajaran');
    }

    public function index()
    {
        $data['list'] = $this->M_kelas->get_all_kelas("")->result_array();
        $this->template->load('template_admin', 'admin/jadwal/jadwal_manage', $data);
    }

    public function lihat_jadwal()
    {
        $data['list'] = $this->M_kelas->get_all_kelas("")->result_array();
        $jadwal = $this->M_pelajaran->get_jadwal_kelas($this->uri->segment(4))->result_array();
        $labelDay = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];

        $data['jadwal'] = [];
        foreach ($labelDay as $ld) {
            $urutan = 2;
            $temp_jadwal = [];
            foreach ($jadwal as $key) {
                for ($i = 0; $i < $key['mapel_jp']; $i++) {
                    if ($ld == $key['hari']) {
                        $temp_jadwal[] = array(
                            'kelas_level' => $key['kelas_level'],
                            'kelas_nama' => $key['kelas_nama'],
                            'guru_nama' => $key['guru_nama'],
                            'mapel_nama' => $key['mapel_nama'],
                            'mapel_jp' => $key['mapel_jp'],
                            'hari' => $key['hari'],
                            'jp_urutan' => $urutan != 5 ? $urutan : $urutan++
                        );
                        // if($urutan)
                        $urutan++;
                    }
                }
            }
            // $tes = ;
            for ($j = count($temp_jadwal) + 3; $j <= 11; $j++) {
                array_push($temp_jadwal, array(
                    'kelas_level' => '',
                    'kelas_nama' => '',
                    'guru_nama' => '',
                    'mapel_nama' => '',
                    'mapel_jp' => '',
                    'hari' => $ld,
                    'jp_urutan' => $j
                ));
            }
            $data['jadwal'] = array_merge($data['jadwal'], $temp_jadwal);
        }
        // $this->debug($jadwal);
        // die;
        $this->template->load('template_admin', 'admin/jadwal/lihat_jadwal', $data);
    }

    public function print_jadwal()
    {
        $data['list'] = $this->M_kelas->get_all_kelas("")->result_array();
        $jadwal = $this->M_pelajaran->get_jadwal_kelas($this->uri->segment(4))->result_array();
        $labelDay = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];

        $data['jadwal'] = [];
        foreach ($labelDay as $ld) {
            $urutan = 2;
            $temp_jadwal = [];
            foreach ($jadwal as $key) {
                for ($i = 0; $i < $key['mapel_jp']; $i++) {
                    if ($ld == $key['hari']) {
                        $temp_jadwal[] = array(
                            'kelas_level' => $key['kelas_level'],
                            'kelas_nama' => $key['kelas_nama'],
                            'guru_nama' => $key['guru_nama'],
                            'mapel_nama' => $key['mapel_nama'],
                            'mapel_jp' => $key['mapel_jp'],
                            'hari' => $key['hari'],
                            'jp_urutan' => $urutan != 5 ? $urutan : $urutan++
                        );
                        // if($urutan)
                        $urutan++;
                    }
                }
            }
            // $tes = ;
            for ($j = count($temp_jadwal) + 3; $j <= 11; $j++) {
                array_push($temp_jadwal, array(
                    'kelas_level' => '',
                    'kelas_nama' => '',
                    'guru_nama' => '',
                    'mapel_nama' => '',
                    'mapel_jp' => '',
                    'hari' => $ld,
                    'jp_urutan' => $j
                ));
            }
            $data['jadwal'] = array_merge($data['jadwal'], $temp_jadwal);
        }
        // $this->debug($data['jadwal']);
        // die;
        $this->load->view('admin/jadwal/jadwal_print', $data);
    }

    function shuffle_assoc($list)
    {
        if (!is_array($list)) return $list;
        $keys = array_keys($list);
        shuffle($keys);
        $random = array();
        foreach ($keys as $key)
            $random[$key] = $list[$key];
        return $random;
    }

    public function generate_jadwal()
    {
        ini_set('max_execution_time', 0);
        ini_set('memory_limit', '2048M');
        $start_time_2 = microtime(true);
        $this->M_pelajaran->delete('tbl_jadwal', array('angkatan' => $this->uri->segment(4)));

        $arrayKelas = $this->M_kelas->get_all_kelas($this->uri->segment(4))->result_array();
        $constValue = 0.45;

        $key = 0;
        foreach ($arrayKelas as $idKelas) {
            $arrayMapel[$idKelas['kelas_alias']] = $this->M_pelajaran->count_mapel_kelas($idKelas['id'])->result_array();

            $tempArray = $arrayMapel[$idKelas['kelas_alias']];

            if (!empty($tempArray)) {

                foreach ($tempArray as $index => $value) {
                    $tempArray[$index]['cg_value'] = $value['total_kelas'] / $value['mapel_jp'];
                    $tempArray[$index]['conflict_value'] = round($constValue / $tempArray[$index]['cg_value'], 4);
                }

                if ($key % 3 == 0)
                    array_multisort(array_column($tempArray, 'mapel_nama'), SORT_DESC, $tempArray);
                elseif ($key % 2 == 0)
                    array_multisort(array_column($tempArray, 'mapel_jp'), SORT_ASC, $tempArray);
                else
                    array_multisort(array_column($tempArray, 'guru_nama'), SORT_DESC, $tempArray);

                $mx = 0;
                $j = 0;
                $num = 0;
                while (count($tempArray) > 0) {
                    if ($mx > 15) {
                        $mx = 0;
                        $num = 0;
                        $j = 0;
                        $arrayHari[$idKelas['kelas_nama'] . $key] = [];
                        $tempArray = $arrayMapel[$idKelas['kelas_alias']];
                        $tempArray = $this->shuffle_assoc($tempArray);
                    }

                    $lastIndex = 0;
                    foreach ($tempArray as $index => $value) {
                        $skip = 0;
                        $oldnum = $num;
                        $num += $value['mapel_jp'];

                        if ($value['mapel_jp'] == 2 || $value['mapel_jp'] == 4) {
                            if ($value['mapel_jp'] == $lastIndex) {
                                $skip = 1;
                            }
                        }

                        if ($num <= 9 && $skip != 1) {

                            $arrayHari[$idKelas['kelas_nama'] . $key][$j][] = $value;
                            unset($tempArray[$index]);

                            if ($num == 8 || $num == 9) {
                                $num = 0;
                                $j++;
                            }
                        } else {
                            $num = $oldnum;
                        }

                        $lastIndex = $value['mapel_jp'];
                    }
                    $mx++;
                }

                $key++;
            }
            // $this->debug($arrayHari);
            // die;
        }
        // $this->debug($arrayHari);
        // die;
        $labelDay = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
        foreach ($arrayHari as $ary) {
            foreach ($ary as $idx => $ar) {
                foreach ($ar as $r) {
                    if ($idx != 5) {
                        $data_input = array(
                            'angkatan' => $this->uri->segment(4),
                            'id_ajar' => $r['id_ajar'],
                            'id_kelas' => $r['id_kelas'],
                            'hari' => $labelDay[$idx]
                        );
                        $this->M_pelajaran->insert('tbl_jadwal', $data_input, false);
                    }
                }
            }
        }
        $end_time_2 = microtime(true);
        $waktu_eksekusi = round(($end_time_2 - $start_time_2), 3);

        $this->session->set_flashdata('msg', 'Berhasil Mengenerate Jadwal Kelas ' . $this->uri->segment(4) . ' Dengan Estimasi Waktu ' . $waktu_eksekusi . 'ms|success');
        redirect('admin/jadwal');
    }
}
