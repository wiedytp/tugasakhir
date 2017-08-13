<?php 

class Model_email extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		
	}

	public function getDataEmail() {

		$db = $this->load->database('default', TRUE);

		$query = "SELECT pesan, sendtime 
				  FROM history_email ORDER BY sendtime DESC";

		
		return $db->query($query);

	}

	public function getDataEmailLimit($page, $limiter) {

		$db = $this->load->database('default', TRUE);

		$query = "SELECT pesan, sendtime 
				  FROM history_email ORDER BY sendtime 
				  LIMIT $page, $limiter
				  ";

		
		return $db->query($query);

	}
	

	public function getCountEmail () {
		$db= $this->load->database('default',TRUE);

		$query = "SELECT COUNT(*) as total FROM history_email";
		return $db->query($query);
	}

	public function getDataEmailDash() {

		$db = $this->load->database('default', TRUE);

		$query = "SELECT pesan, sendtime 
				  FROM history_email ORDER BY sendtime DESC LIMIT 5";

		
		return $db->query($query);

	}

	public function checkAlertMail() {
		
  $db2 = $this->load->database('snort', TRUE);

  $query = "SELECT sid, cid, timestamp, inet_ntoa(ip_src) as ip_src, inet_ntoa(ip_dst) as ip_dst, sig_name from acid_event WHERE email_status = 0 ORDER BY timestamp DESC LIMIT 1";

  return $db2->query($query);
 
	}

	public function updateAlertMail($sid, $cid){
		$db2 = $this->load->database('snort', TRUE);

		$data = array(
			'email_status' => 1,
		);

		$db2->where('sid', $sid);
		$db2->where('cid', $cid);
		$db2->update('acid_event', $data);
	}
	
	public function insertAlertMail($message, $sendtime){
		$db = $this->load->database('default', TRUE);

		$data = array(
			'pesan' => $message,
			'sendtime' => $sendtime,
		);

		$db->insert('history_email', $data);
	}
	public function pesanEmail () {
		$db2 = $this->load->database('snort', TRUE);
		// $query = "SELECT inet_ntoa(ip_src) as ip_src, 
		// 				 inet_ntoa(ip_dst) as ip_dst, 
		// 				 sig_name, timestamp
		// 			FROM acid_event 
		// 			WHERE ip_src != '0.0.0.0' and email_status = 0 GROUP BY timestamp 
		// 			ORDER BY timestamp DESC";
		$query = "SELECT INET_NTOA( ip_src ) AS ip_src, INET_NTOA( ip_dst ) AS ip_dst, sig_name, TIMESTAMP
				FROM acid_event
				WHERE ip_src !=  '0.0.0.0'
				AND email_status =0
				GROUP BY TIMESTAMP
				ORDER BY TIMESTAMP DESC";

		return $db2->query($query);
	}

}