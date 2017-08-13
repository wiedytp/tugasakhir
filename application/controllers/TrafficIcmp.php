<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class TrafficIcmp extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Model_traffic');
	}

	public function index()
	{
		// Pagination
		$config['base_url'] = base_url(). 'index.php/TrafficIcmp/index/';
		$config['total_rows'] = $this->Model_traffic->getDataIcmp()->num_rows();
		$config['per_page'] = 10;
		$this->pagination->initialize($config);
		$data['paging'] = $this->pagination->create_links();

		$page = $this->uri->segment(3);
		$page = $page=='' ? 0 : $page;

		$data['record'] = $this->Model_traffic->getDataIcmpLimit($page, $config['per_page'])->result();
		$this->template->load('template_icmp','traffic/v_icmp', $data);
	}

}