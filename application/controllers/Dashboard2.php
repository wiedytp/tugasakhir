<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
class Dashboard2 extends CI_Controller {
public function __construct()
	{
		parent::__construct();
		$this->load->model('model_alert');
		$this->load->model('Model_traffic');
		$this->load->model('Model_email');
	}

	function test()
	{
		header('Content-Type: application/json');
		$data = $this->model_alert->getTest();
		echo json_encode($data->result_array());
	}

	function test_index()
	{
		$this->load->view('test/index');
	}

	function index()
	{
		$data['record'] = $this->model_alert->getData()->result();


		$data['all_count'] = $this->Model_traffic->getAllCount()->result();

		// Count per day last 7 day
		$data['icmp_count'] = $this->Model_traffic->getICMPCount()->result();
		$data['tcp_count'] = $this->Model_traffic->getTCPCount()->result();
		$data['udp_count'] = $this->Model_traffic->getUDPCount()->result();

		// Total count per day last 7 day
		$data['total_tcp'] = $this->Model_traffic->totalTCP()->result();
		$data['total_udp'] = $this->Model_traffic->totalUDP()->result();
		$data['total_icmp'] = $this->Model_traffic->totalICMP()->result();

		// Latest Email
		$data['dataemail'] =$this->Model_email->getDataEmailDash()->result();


		$this->load->view('dashboard2', $data);
	}
}
