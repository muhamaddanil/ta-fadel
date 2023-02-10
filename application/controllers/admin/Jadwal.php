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
        $this->template->load('template_admin', 'admin/jadwal/lihat_jadwal', $data);
    }

    public function generate_jadwal()
    {
        ini_set('max_execution_time', 0);
        ini_set('memory_limit', '2048M');

        $this->M_pelajaran->delete_jadwal();

        $arrayKelas = $this->M_kelas->get_all_kelas('10')->result_array();
        // $arrayKelas = $this->M_kelas->get_kelas_byid('40')->result_array();
        // $arrayKodeGuru = $this->convert_1dimension_array($this->M_guru->get_all_kode()->result_array(), 'guru_kode');
        $constValue = 0.45;
        // $this->debug($arrayKelas);
        // die;
        $labelDay = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];

        $key = 0;
        foreach ($arrayKelas as $idKelas) {
            $arrayMapel[$idKelas['kelas_alias']] = $this->M_pelajaran->count_mapel_kelas($idKelas['id'])->result_array();


            $tempArray = $arrayMapel[$idKelas['kelas_alias']];

            if (!empty($tempArray)) {

                foreach ($tempArray as $index => $value) {

                    $tempArray[$index]['cg_value'] = $value['total_kelas'] / $value['mapel_jp'];
                    $tempArray[$index]['conflict_value'] = round($constValue / $tempArray[$index]['cg_value'], 4);
                }

                if ($key % 2 == 0)
                    array_multisort(array_column($tempArray, 'mapel_nama'), SORT_ASC, $tempArray);
                else
                    array_multisort(array_column($tempArray, 'mapel_jp'), SORT_ASC, $tempArray);
                // $this->debug($tempArray);
                // die;

                $j = 0;
                $num = 0;

                while (count($tempArray) > 0) {
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

                            $arrayHari[$idKelas['kelas_nama']][$j][] = $value;
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
                }

                $key++;
            }
            // $this->debug($arrayHari);
            // die;

        }
        // $this->debug($arrayHari);
        // die;

        $groupedDayArray = array();

        foreach ($arrayHari as $ary) {
            foreach ($ary as $idx => $ar) {
                foreach ($ar as $r) {
                    $groupedDayArray[$labelDay[$idx]][] = $r;

                    $data_input = array(
                        'id_ajar' => $r['id_ajar'],
                        'id_kelas' => $r['id_kelas'],
                        'hari' => $labelDay[$idx]
                    );

                    $this->M_pelajaran->insert('tbl_jadwal', $data_input, false);
                }
            }
        }

        // foreach ($arrayHari as $ary) {
        //     foreach ($ary as $idx => $ar) {
        //         foreach ($ar as $r) {
        //             $groupedDayArray[$labelDay[$idx]][] = $r;
        //         }
        //     }
        // }

        // foreach ($arrayKodeGuru as $kdGu) {
        //     foreach ($groupedDayArray as $keys => $gr) {
        //         $arrayCount[$keys][$kdGu] = 0;
        //         foreach ($gr as $idx => $g) {
        //             if ($kdGu == $g['guru_kode']) {
        //                 $arrayCount[$keys][$kdGu] = $arrayCount[$keys][$kdGu] + $g['mapel_jp'];

        //                 if ($arrayCount[$keys][$kdGu] > 9) {
        //                     $switchArray[$keys][] = $idx;
        //                 }
        //             }
        //         }
        //     }
        // }

        // $groupedDayArray = $this->get_jp_guru($groupedDayArray);
        // $groupedDayArray = $this->sort_by_guru($groupedDayArray);

        // $this->debug($groupedDayArray);
        // die;

        // $data['jadwal'] = $groupedDayArray;
        // $data['list'] = $this->M_kelas->get_all_kelas("")->result_array();
        // $this->template->load('template_admin', 'admin/jadwal/lihat_jadwal', $data);
        redirect('admin/jadwal');
    }

    public function get_jp_guru($groupedDayArray)
    {
        foreach ($groupedDayArray as $key_hari => $value_hari) {
            foreach ($value_hari as $key_perhari => $value_perhari) {
                $jp_guru = 0;
                $jp_kelas = 0;
                foreach ($value_hari as $key => $value) {
                    if ($value['guru_kode'] == $value_perhari['guru_kode']) {
                        $jp_guru = $jp_guru + $value['mapel_jp'];
                    }
                    if ($value['id_kelas'] == $value_perhari['id_kelas']) {
                        $jp_kelas = $jp_kelas + $value['mapel_jp'];
                    }
                }
                $groupedDayArray[$key_hari][$key_perhari]['total_jp_guru'] = $jp_guru;
                $groupedDayArray[$key_hari][$key_perhari]['total_jp_kelas'] = $jp_kelas;
            }
        }
        return $groupedDayArray;
    }

    public function get_jp_guru_copy($data, $guru_kode)
    {
        $jp = 0;
        foreach ($data as $key => $value) {
            if ($data['guru_kode'] == $guru_kode) {
                $jp = $jp + $data['mapel_jp'];
            }
        }
        return $jp;
    }

    public function sort_by_guru($groupedDayArray)
    {
        foreach ($groupedDayArray as $key2 => $today) {
            $sortArray = array();
            foreach ($today as $class) {
                foreach ($class as $key => $value) {
                    if (!isset($sortArray[$key])) {
                        $sortArray[$key] = array();
                    }
                    $sortArray[$key][] = $value;
                }
            }
            array_multisort($sortArray['guru_kode'], SORT_ASC, $groupedDayArray[$key2]);
        }

        return $groupedDayArray;
    }

    function convert_1dimension_array($array, $column)
    {
        $arrayReturn = array();
        foreach ($array as $ar) {
            $arrayReturn[] = $ar[$column];
        }
        return $arrayReturn;
    }
}
