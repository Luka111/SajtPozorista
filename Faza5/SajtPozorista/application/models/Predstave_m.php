<?php

class Predstave_m extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert($creatorUsername, $fileName) {
        $data = array(
            'PozID' => $this->input->post('pozID'),
            'Naziv' => $this->input->post('naziv'),
            'Glumci' => $this->input->post('glumci'),
            'Reziser' => $this->input->post('reziser'),
            'Slika' => $fileName,
            'Username' => $creatorUsername
        );
        $this->db->insert('predstava', $data);
        return $this->db->insert_id();
    }

    public function findOne($id) {
        $query = $this->db->get_where('predstava', array('PredID' => $id));
        return $query->row_array();
    }

    public function find() {
        $this->db->select('PredID, Naziv, Slika');
        $query = $this->db->get('predstava');
        return $query->result_array();
    }
    
    public function findByPozId($PozID) {
        $this->db->select('PredID, Naziv, Slika');
        $query = $this->db->get_where('predstava', array('PozID' => $PozID));
        return $query->result_array();
    }
    
    public function findAktuelnePredstave(){
        $this->db->select('PredID, Naziv, Slika');
        $this->db->order_by('Naziv', 'RANDOM');
        $this->db->limit(3);
        $query = $this->db->get('predstava');
        return $query->result_array();
    }

    public function removeOne($id) {
        $this->db->delete('predstava', array('PredID' => $id));
    }

    public function update($fileName) {
        $data = array(
            'PozID' => $this->input->post('pozID'),
            'Naziv' => $this->input->post('naziv'),
            'Glumci' => $this->input->post('glumci'),
            'Reziser' => $this->input->post('reziser')
        );
        if($fileName){
            $data['Slika'] = $fileName;
        }
        $this->db->where('PredID', $this->input->post('PredID'));
        $this->db->update('predstava', $data);
    }

}
