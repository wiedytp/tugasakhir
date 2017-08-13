<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Email extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Model_email');

	}
	public function index()
	{
		// Pagination
		$config['base_url'] = base_url(). 'index.php/Email/index/';
		$config['total_rows'] = $this->Model_email->getDataEmail()->num_rows();
		$config['per_page'] = 10;
		$this->pagination->initialize($config);
		$data['paging'] = $this->pagination->create_links();

		$page = $this->uri->segment(3);
		$page = $page=='' ? 0 : $page;	

		$data['record'] = $this->Model_email->getDataEmailLimit($page, $config['per_page'])->result();
		$data['count'] = $this->Model_email->getCountEmail()->result();
		$data['dataemail'] =$this->Model_email->getDataEmailDash()->result();
		$data['pEmail'] =$this->Model_email->pesanEmail()->result();
		
		$this->template->load('template_email', 'email/index', $data);
	}
	public function send_email()
	 {
	  for($i=1;$i<=60;$i++){
	   $config['protocol'] = 'smtp';
	   $config['smtp_host'] = "ssl://smtp.googlemail.com";
	   $config['smtp_port'] = 465;
	         $config['smtp_user'] = 'tugasakhirsnort@gmail.com';
	         $config['smtp_pass'] = 'birojasawd99';
	   $config['charset'] = 'iso-8859-1';
	   $config['wordwrap'] = TRUE;

	   $this->email->initialize($config);

	   $data['alertmail'] = $this->Model_email->checkAlertMail()->result();

	   if(count($data['alertmail'])>0)
	   {
	    $message = $data['alertmail'][0]->ip_src." melakukan : ".$data['alertmail'][0]->sig_name." ke : ".$data['alertmail'][0]->ip_dst." pada : ".$data['alertmail'][0]->timestamp;

	    $this->email->from('wiedytp5@gmail.com', 'Admin Snort');
	    $this->email->to('wiedytp5@gmail.com');
	    $this->email->subject('Alert Snort');
	    $this->email->message($message);
	    
	    if($this->email->send())
	    {
	     $this->Model_email->updateAlertMail($data['alertmail'][0]->sid, $data['alertmail'][0]->cid);
	     $this->Model_email->insertAlertMail($message, $data['alertmail'][0]->timestamp);

	     echo "Sending Mail Success";
	    }
	    else
	    {
	     $this->email->print_debugger(array('headers'));
	    }
	   }
	   sleep(1);
	  }
 }

}