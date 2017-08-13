<?php 

class Model_alert extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		// $db2 = $this->load->database('snort', TRUE);
	}

	public function getData() {

		$db2 = $this->load->database('snort', TRUE);

		// $query = "SELECT DISTINCT hdr.ip_src, hdr.ip_dst, hdr.cid, sig.sig_name, evn.timestamp
		// 			FROM iphdr AS hdr, event AS evn, signature AS sig
		// 			WHERE hdr.sid = evn.sid
		// 			AND sig.sig_sid = evn.sid
		// 			AND evn.cid = hdr.cid
		// 			LIMIT 0 , 5";
		// 			
			$query = "SELECT ip_src, ip_dst, cid, sig_name, timestamp
					FROM acid_event
					ORDER BY timestamp DESC
					LIMIT 5";

		json_encode($query);

		return $db2->query($query);

	}

	public function getTest() {

		$db2 = $this->load->database('snort', TRUE);

		// $query = "SELECT DISTINCT hdr.ip_src, hdr.ip_dst, hdr.cid, sig.sig_name, evn.timestamp
		// 			FROM iphdr AS hdr, event AS evn, signature AS sig
		// 			WHERE hdr.sid = evn.sid
		// 			AND sig.sig_sid = evn.sid
		// 			AND evn.cid = hdr.cid
		// 			LIMIT 0 , 5";
					
			$query = "SELECT ip_src, ip_dst, cid, sig_name, timestamp
					FROM acid_event
					ORDER BY timestamp DESC
					LIMIT 5";

		return $db2->query($query);

	}

	public function getDataAlert() {

		$db2 = $this->load->database('snort', TRUE);

		// $query = "SELECT DISTINCT hdr.ip_src, hdr.ip_dst, hdr.cid, sig.sig_name, evn.timestamp
		// 			FROM iphdr AS hdr, event AS evn, signature AS sig
		// 			WHERE hdr.sid = evn.sid
		// 			AND sig.sig_sid = evn.sid
		// 			AND evn.cid = hdr.cid
		// 			 LIMIT 10000";


		$query = "SELECT ip_src, ip_dst, cid, sig_name, timestamp
					FROM acid_event 
					ORDER BY timestamp DESC ";
					
					 // LIMIT 10000";

		
		return $db2->query($query);

	}

	public function getDataAlertLimit($page, $limiter) 
	{

		$db2 = $this->load->database('snort', TRUE);

		// $query = "SELECT DISTINCT hdr.ip_src, hdr.ip_dst, hdr.cid, sig.sig_name, evn.timestamp
		// 			FROM iphdr AS hdr, event AS evn, signature AS sig
		// 			WHERE hdr.sid = evn.sid
		// 			AND sig.sig_sid = evn.sid
		// 			AND evn.cid = hdr.cid
		// 			LIMIT $page, $limiter";
		$query = "SELECT ip_src, ip_dst, cid, sig_name, timestamp
				FROM acid_event ORDER BY timestamp DESC
				
				LIMIT $page, $limiter";

		
		return $db2->query($query);

	}


	public function getCountEvent () 
	{
		$db2= $this->load->database('snort',TRUE);

		$query = "SELECT COUNT(*) as total FROM acid_event";
		return $db2->query($query);
	}
}