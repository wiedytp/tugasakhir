<?php
class Model_traffic extends CI_Model {

	public function __construct() 
	{
		parent::__construct();
	}

	// ICMP QUERY

	public function getDataIcmp () 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				icmphdr AS icmp,
				signature AS sig
				WHERE
				(icmp.sid,icmp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

		return $db2->query($query);
	}

	public function getDataIcmpLimit ($page, $limiter) 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				icmphdr AS icmp,
				signature AS sig
				WHERE
				(icmp.sid,icmp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid) ORDER BY timestamp Desc

				LIMIT $page, $limiter";

		return $db2->query($query);
	}

	public function getICMPCount()
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
		FROM
			acid_event AS ev,
			iphdr AS iphdr,
			icmphdr AS icmp,
			signature AS sig

		WHERE
				(icmp.sid,icmp.cid)=(ev.sid,ev.cid) 
		AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
		AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)

		GROUP BY date DESC LIMIT 7";

		return $db2->query($query);
	}

	public function totalICMP() {
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
				FROM 	event AS ev,
						iphdr AS iphdr,
						icmphdr AS icmp,
						signature AS sig
				WHERE
						(icmp.sid,icmp.cid)=(ev.sid,ev.cid) 
				AND 
						(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
						(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

						return $db2->query($query);
	}

	// TCP QUERY

	public function getDataTcp () 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				tcphdr AS tcp,
				signature AS sig
				WHERE
				(tcp.sid,tcp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

		return $db2->query($query);

	}
	public function getDataTcpLimit ($page, $limiter) 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				tcphdr AS tcp,
				signature AS sig
				WHERE
				(tcp.sid,tcp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)
				ORDER BY timestamp DESC 
				LIMIT $page, $limiter";

		return $db2->query($query);

	}

		public function getTCPCount()
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
				FROM 	acid_event AS ev,
						iphdr AS iphdr,
						tcphdr AS tcp,
						signature AS sig
				WHERE
						(tcp.sid,tcp.cid)=(ev.sid,ev.cid) 
				AND 
						(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
						(sig.sig_id,ev.cid)=(ev.signature,ev.cid)
				GROUP BY date DESC LIMIT 7";

		return $db2->query($query);
	}

		public function totalTCP() {
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
				FROM 	acid_event AS ev,
						iphdr AS iphdr,
						tcphdr AS tcp,
						signature AS sig
				WHERE
						(tcp.sid,tcp.cid)=(ev.sid,ev.cid) 
				AND 
						(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
						(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

						return $db2->query($query);
	}


	// UDP QUERY
	
	public function getDataUdp () 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				udphdr AS udp,
				signature AS sig

				WHERE
				(udp.sid,udp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

		return $db2->query($query);
	}
	public function getDataUdpLimit ($page, $limiter) 
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT inet_ntoa(iphdr.ip_src) AS src,
				sig.sig_name AS signature,
				inet_ntoa(iphdr.ip_dst) AS dst,
				timestamp 

				FROM acid_event AS ev,
				iphdr AS iphdr,
				udphdr AS udp,
				signature AS sig

				WHERE
				(udp.sid,udp.cid)=(ev.sid,ev.cid) 
				AND 
				(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
				(sig.sig_id,ev.cid)=(ev.signature,ev.cid)
				ORDER BY timestamp DESC
				LIMIT $page, $limiter 
				";

		return $db2->query($query);
	}

	public function getAllCount()
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number FROM acid_event GROUP BY date DESC LIMIT 7";

		return $db2->query($query);
	}

	public function getUDPCount()
	{
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
				FROM 	acid_event AS ev,
						iphdr AS iphdr,
						udphdr AS udp,
						signature AS sig

				WHERE
						(udp.sid,udp.cid)=(ev.sid,ev.cid) 
				AND 
						(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
						(sig.sig_id,ev.cid)=(ev.signature,ev.cid)
				GROUP BY date DESC LIMIT 7";

				return $db2->query($query);
	}

	public function totalUDP() {
		$db2 = $this->load->database('snort',TRUE);
		$query = "SELECT DATE_FORMAT(ev.timestamp, '%Y-%m-%d') AS date, COUNT(*) AS number
				FROM 	acid_event AS ev,
						iphdr AS iphdr,
						udphdr AS udp,
						signature AS sig
				WHERE
						(udp.sid,udp.cid)=(ev.sid,ev.cid) 
				AND 
						(iphdr.sid,iphdr.cid)=(ev.sid,ev.cid) 
				AND 
						(sig.sig_id,ev.cid)=(ev.signature,ev.cid)";

		return $db2->query($query);
	}

}