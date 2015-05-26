<?php

class Komentari_m extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert($creatorUsername , $predID) {
        $data = array(
            'Tekst' => $this->input->post('tekst'),
            'PredID' => $predID,
            'Username' => $creatorUsername
        );
        return $this->db->insert('komentar', $data);
    }

    public function find($predID) {
        $query = $this->db->get_where('komentar', array('PredID' => $predID));
        return $query->result_array();
    }

    public function removeOne($id) {
        $this->db->delete('komentar', array('KomID' => $id));
    }

}
