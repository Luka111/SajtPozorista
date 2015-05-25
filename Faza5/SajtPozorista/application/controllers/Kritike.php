<?php

include_once APPPATH . '/controllers/Base.php';

class Kritike extends Base {

    private $viewIndicator;

    public function __construct() {
        parent::__construct();
        $this->load->model('kritike_m');
      //  $this->load->model('predstave_m'); //
    }

    protected function obrada($data = NULL) {
        if ($this->viewIndicator === 'View') {
            $this->load->view('templates/' . $this->userRole . '/kritika', $data);
        } elseif ($this->viewIndicator === 'ViewSpecific') {
            $this->load->view('templates/' . $this->userRole . '/kritike', $data);
        } elseif ($this->viewIndicator === 'Insert') {
           // $data['predstave'] = $this->kritike_m->find();//
            $data['predstave'] = array(0 => array("PredID" => "1","Naziv" => "Hamlet"),1 => array("PredID" => "2","Naziv" => "Magbet"));
            $this->load->view('templates/dodajKritiku', $data);
        } elseif ($this->viewIndicator === 'Update') {
           // $data['predstave'] = $this->kritike_m->find();//
            $data['predstave'] = array(0 => array("PredID" => "1","Naziv" => "Hamlet"),1 => array("PredID" => "2","Naziv" => "Magbet"));
            $this->load->view('templates/izmeniKritiku', $data);
        } else {
            $data['kritike'] = $this->kritike_m->find();
            $this->load->view('templates/' . $this->userRole . '/kritike', $data);
        }
    }

    public function kritike($id) {
        $this->viewIndicator = 'ViewSpecific';
        $data['kritike'] = $this->kritike_m->findSpecific($id);
        $this->view($data);
    } 

    public function  kritika($id) {
        $this->viewIndicator = 'View';
        $data['kritika'] = $this->kritike_m->findOne($id);
        $this->view($data); 
    }

    public function dodaj() {
        if (!checkPermission(array('kriticar'), $this->userRole)) {            // samo kriticar.
            redirect(route_url(''));
        } else {
            $this->viewIndicator = 'Insert';
            $this->view();
        }
    }

    public function dodajKritiku() {
        if (!checkPermission(array('kriticar'), $this->userRole)) {
            redirect(route_url(''));
        } else {
            $this->validation();
            if ($this->form_validation->run() === FALSE) {
                $this->dodaj();
            } else {
                $ret = $this->kritike_m->insert($this->session->username);
                if ($ret) {
                    redirect(route_url('kritike/view'));
                } else {
                    $this->dodaj();
                }
            }
        }
    }

    public function izmeni($id) {
        if (!checkPermission(array('kriticar', 'admin'), $this->userRole)) {
            redirect(route_url(''));
        } else {
            $this->viewIndicator = 'Update';
            $data['kritika'] = $this->kritike_m->findOne($id);
            $this->view($data);
        }
    }

    public function izmeniKritiku() {
        if (!checkPermission(array('kriticar', 'admin'), $this->userRole)) {
            redirect(route_url(''));
        } else {
            $this->validation();
            if ($this->form_validation->run() === FALSE) {
                $this->izmeni($this->input->post('KritID'));
            } else {
                $ret = $this->kritike_m->update();
                redirect(route_url('kritike/kritika/' . $this->input->post('KritID')));
            }
        }
    }

    private function validation() {
        $this->form_validation->set_rules('naziv', 'Naziv', 'required');
    }

    public function obrisi($id) {
        if (!checkPermission(array('kriticar', 'admin'), $this->userRole)) {
            redirect(route_url(''));
        } else {
            $this->kritike_m->removeOne($id);
            redirect('kritike/view');
        }
    }

}
