<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('model_alert');
	}

	public function index()
	{
		// Pagination
		$config['base_url'] = base_url(). 'index.php/Alert/index/';
		$config['total_rows'] = $this->model_alert->getDataAlert()->num_rows();
		$config['per_page'] = 10;
		$this->pagination->initialize($config);
		$data['paging'] = $this->pagination->create_links();

		$page = $this->uri->segment(3);
		$page = $page=='' ? 0 : $page;

		$data['record'] = $this->model_alert->getDataAlertLimit($page, $config['per_page'])->result();

		$data['record'] = $this->model_alert->getData()->result();
		$data['count'] = $this->model_alert->getCountEvent()->result();

		$this->template->load('template_alert', 'alert/index', $data);
	}

	
}