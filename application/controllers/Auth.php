<?php
defined('BASEPATH') OR exit('No direct script access allowed');


Class Auth extends CI_Controller 
{
    public function __construct()
    {
        parent ::__construct();

    
    //Load helper library
    $this->load->helper('form');
    // //Load validation library
    $this->load->library('form_validation');
    //Load session library
    $this->load->library('session');


}

public function index (){
   $this->load->view('login');
   }

// Check Login proses
public function login_process() {

    $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
    $this->form_validation->set_rules('password','Password', 'trim|required|xss_clean');

    if ($this->form_validation->run() == FALSE) {
        if(isset($this->session->userdata['logged_in'])) {
            $this->load->view('dashboard2');
        }else{
            $this->load->view('login');
        }
        }else{
            $data=array (
                    'username'=>$this->input->post('username'),
                    'password'=>$this->input->post('password')
                );
            $result=$this->M_login->login($data);
            if ($result == TRUE ) {

                $username = $this->input->post('username');
                $result=$this->M_login->read_user_information($username);
                if ($result != false) {
                    $session_data = array(
                    'username' => $result[0]->user_name,
                    'email' => $result[0]->user_email,
                );

                // Add user data in session
                    $this->session->set_userdata('logged_in', $session_data);
                    $this->load->view('dashboard2');
                }
    } else {
    $data = array(
                'error_message' => 'Invalid Username or Password'
                );
    $this->load->view('login', $data);
    
    } 
}
}

    // Logout from admin page
    
    public function logout() {

    // Removing session data
    $sess_array = array(
    'username' => ''
    );
    $this->session->unset_userdata('logged_in', $sess_array);
    $data['message_display'] = 'Successfully Logout';
    $this->load->view('login', $data);
    }
        
        
}
?>