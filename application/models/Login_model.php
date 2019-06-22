<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
	/**
     * @author Fian Hidayah
	 * Model untuk table
	 */
class login_model extends CI_Model {

	/**
	 * @author Fian Hidayah
	 * Constructor class
	 */
	function __construct() {
		// Call the Model constructor
		parent::__construct();
		$this->db_evin = $this->load->database('motto', TRUE);
	}
	function cek_login($username,$password){
		$sql = "select * from user where username = '$username' and password = '$password'";
		$query = $this->db_evin->query($sql);
		return $query->result();
	}
	function j_cabang(){
		$sql = "select count(id_cabang) as jumlah from cabang";
		$query = $this->db_evin->query($sql);
		return $query->result();
	}
}
?>