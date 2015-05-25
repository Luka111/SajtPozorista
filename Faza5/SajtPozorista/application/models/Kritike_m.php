<?php
    
class Kritike_m extends CI_Model{
    
    public function __construct() {
        $this->load->database();
    }
    
    public function insert($creatorUsername){
        $data = array(
            'PredID' => $this->input->post('PredID'),
            'Naslov' => $this->input->post('naslov'),
            'Sadrzaj' => $this->input->post('sadrzaj'),
            //Slike
            'Username' => $this->input->post('Username')
        );
        return $this->db->insert('kritka', $data);
    }
    
     public function findOne($id) {
        $query = $this->db
        ->select('kritika.predID, kritika.KritID AS KritID, predstava.Naziv AS Predstava, kritika.Naslov AS Naslov, kritika.Sadrzaj AS sadrzaj ')
        ->from('kritika')
        ->join('predstava','predstava.PredID = kritika.KritID')
        ->where(array('KritID' => $id))
        ->get();
        return $query->row_array();
    }
    
     public function find() {
        $this->db->select('KritID, Naslov');
        $query = $this->db->get('kritika');
        return $query->result_array();
    }
    
    public function findSpecific($predID) {
        $this->db->select('KritID, Naslov')
        ->where(array('PredID' => $predID));
        $query = $this->db->get('kritika');
        return $query->result_array();
    }

    public function removeOne($id) {
        $this->db->delete('kritika', array('KritID' => $id));
    }

    public function update() {
        $data = array(
            'PredID' => $this->input->post('PredID'),
            'Naslov' => $this->input->pos('naslov'),
            'Sadrzaj' => $this->input->post('sadrzaj'),
            //TODO 'Slika' => ...
        );
        $this->db->where('KritID', $this->input->post('KritID'));
        $this->db->update('kritika', $data);
    }
}

?>