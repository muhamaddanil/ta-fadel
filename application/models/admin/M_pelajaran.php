<?php

class M_pelajaran extends MY_Model
{
    protected $primary = 'tbl_mapel';
    protected $secondary = 'tbl_guru';
    protected $third = 'tbl_ajar';
    protected $fourth = 'tbl_aktivitas';
    protected $fifth = 'tbl_kelas';
    protected $sixth = 'tbl_jadwal';

    // Universal CRUD
    public function insert($table, $data, $batch = false)
    {
        if ($batch != false) {
            $this->db->insert_batch($table, $data);
        } else {
            $this->db->insert($table, $data);
        }

        return $this->db->insert_id();
    }

    public function update($table, $data, $where)
    {
        $this->db->where($where);
        return $this->db->update($table, $data);
    }

    public function delete($table, $where)
    {
        $this->db->where($where);
        return $this->db->delete($table);
    }

    public function delete_jadwal()
    {
        return $this->db->empty_table('tbl_jadwal');
    }

    // Get Mapel
    public function get_all_table_mapel()
    {
        // Minimaze data 
        $this->db->select('
                mp.*, count(aj.id) as total_guru
            ');

        $this->db->join($this->third . ' as aj', 'mp.id = aj.id_mapel', 'left');
        $this->db->group_by('mp.id');
        // $this->db->group_by('aj.id_mapel');

        return $this->db->get($this->primary . ' as mp');
    }

    public function get_mapel_id_only($id)
    {
        // Minimaze data 
        $this->db->select('
                mp.*
            ');

        $this->db->where('id', $id);
        return $this->db->get($this->primary . ' as mp');
    }

    public function get_guru_by_mapel($id = null)
    {
        $this->db->select('
                gr.id, gr.guru_nama
            ');

        $this->db->join($this->third . ' as aj', 'gr.id = aj.id_guru');
        $this->db->where('aj.id_mapel', $id);

        return $this->db->get($this->secondary . ' as gr');
    }

    public function get_mapel_and_guru()
    {
        $this->db->select('
                gr.guru_nama, gr.guru_kode,
                mp.mapel_nama, mp.mapel_kode,
                aj.id
            ');

        $this->db->join($this->secondary . ' as gr', 'gr.id = aj.id_guru');
        $this->db->join($this->primary . ' as mp', 'mp.id = aj.id_mapel');

        $this->db->order_by('gr.id', 'ASC');

        return $this->db->get($this->third . ' as aj');
    }

    public function get_id_ajar_by_mapel_and_guru($mapel, $guru)
    {
        $this->db->select('*');

        $this->db->where('id_mapel', $mapel);
        $this->db->where('id_guru', $guru);


        return $this->db->get($this->third);
    }

    public function get_kelas_mapel_byid($id)
    {
        $this->db->select('
                gr.guru_nama, gr.guru_kode,
                mp.mapel_nama, mp.mapel_kode,
                aj.id as id_ajar,
                act.id
            ');

        $this->db->where('id_kelas', $id);

        $this->db->join($this->third . ' as aj', 'aj.id = act.id_ajar');
        $this->db->join($this->secondary . ' as gr', 'gr.id = aj.id_guru');
        $this->db->join($this->primary . ' as mp', 'mp.id = aj.id_mapel');

        return $this->db->get($this->fourth . ' as act');
    }

    // Method
    public function count_mapel_kelas($where)
    {
        // Select for from later
        $this->db->select('
                count(ajr.id) as total_kelas,
                ajr.id_ajar
            ');

        $this->db->group_by('id_ajar');
        // $this->db->group_by('id_ajar');
        $this->db->from($this->fourth . ' as ajr');
        $this->db->join($this->fifth . ' as k', 'ajr.id_kelas = k.id');

        $temp_table = $this->db->get_compiled_select();

        $this->db->select('tmp.total_kelas, act.id_kelas, mp.mapel_nama, mp.mapel_jp, gr.guru_kode, gr.guru_nama, tmp.id_ajar');

        $this->db->from($this->fourth . ' as act');

        $this->db->join($this->third . ' as aj', 'act.id_ajar = aj.id');
        $this->db->join($this->secondary . ' as gr', 'aj.id_guru = gr.id');
        $this->db->join($this->primary . ' as mp', 'aj.id_mapel = mp.id');
        $this->db->join('(' . $temp_table . ') as tmp', 'act.id_ajar = tmp.id_ajar');

        $this->db->where('act.id_kelas', $where);
        return $this->db->get();
    }

    public function get_jadwal_kelas($kelas)
    {
        // Minimaze data 
        $this->db->select('
                *
            ');

        $this->db->from($this->sixth . ' as jd');
        $this->db->join($this->fifth . ' as kls', 'kls.id = jd.id_kelas');
        $this->db->join($this->third . ' as aj', 'aj.id = jd.id_ajar');
        $this->db->join($this->secondary . ' as gr', 'gr.id = aj.id_guru');
        $this->db->join($this->primary . ' as mp', 'mp.id = aj.id_mapel');
        $this->db->where('jd.id_kelas', $kelas);
        // return $this->db->get($this->sixth . ' as j');
        return $this->db->get();
    }
}
