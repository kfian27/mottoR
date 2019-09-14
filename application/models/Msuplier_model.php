<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
	/**
     * @author Fian Hidayah
	 * Model untuk table
	 */
class msuplier_model extends CI_Model {

	/**
	 * @author Fian Hidayah
	 * Constructor class
	 */
	function __construct() {
		// Call the Model constructor
		parent::__construct();
		$this->db_evin = $this->load->database('motto', TRUE);
		//set waktu yang digunakan ke zona jakarta
		//$this->db_simpeg->query("SET time_zone='Asia/Jakarta'");
	}

		/**
		 * @author Fian Hidayah
		 * method untuk generate select query dari database
		 */
		public function select($selectcolumn=true){
	    	if($selectcolumn){
		    	$this->db_evin->select('id_sup');
		    	$this->db_evin->select('nm_sup');
		    	$this->db_evin->select('alm_sup');
		    	$this->db_evin->select('st_sup');
	    	}
            	$this->db_evin->from('suplier');
		}

		/**
         * @author Fian Hidayah
         * method untuk mendapatkan data dari tabel survei
         * @param type $limit jumlah yang mau diambil
         * @param type $offset mulai dari mana
         * @return type hasil query dari database
         */
        function get($where = "", $order = "id_sup asc", $limit=null, $offset=null, $selectcolumn = true){
  			 $this->select($selectcolumn);
  			 if($limit != null) $this->db_evin->limit($limit, $offset);
  			 if($where != "") $this->db_evin->where($where);
  			 $this->db_evin->order_by($order);
  			 $query = $this->db_evin->get();
  			 return $query->result();
        }
        function get_by_id($id_sup)
		 {
			if($id_sup == null || trim($id_sup) == "") return null;
			$result = $this->get("id_sup = '".$id_sup."'");
			return count($result) == 0?null:$result[0];
		 }

		/**
		 * @author Fian Hidayah
		 * Fungsi untuk insert data ke tabel survei
		 */
		function insert($nm_sup=false,$alm_sup=false)
		{
			$data = array();
			if($nm_sup !== false)$data['nm_sup'] = trim($nm_sup);
			if($alm_sup !== false)$data['alm_sup'] = trim($alm_sup);
			$data['st_sup'] = STATUS_ACTIVE;
			$this->db_evin->insert('suplier', $data);
			return $this->db_evin->insert_id();
		}

		function update($id_sup=false,$nm_sup=false,$alm_sup=false)
		{
			$data = array();
      		if($nm_sup !== false)$data['nm_sup'] = trim($nm_sup);
      		if($alm_sup !== false)$data['alm_sup'] = trim($alm_sup);
			return $this->db_evin->update('suplier', $data, "id_sup = $id_sup");
		}

		 /* @author Fian Hidayah
		 * Fungsi untuk delete data dari tabel Survei
		 */
		function delete($id_sup)
		{
			$data = array();
			$data['st_sup'] = STATUS_DELETE;
			$this->db_evin->update('suplier', $data, "id_sup = $id_sup");
		}

		/**
		 * @author Fian Hidayah
		 * Fungsi untuk menghitung jumlah row dari tabel survei
		 * @param type $where custome where
		 */
		function count_all($where = "")
		{
			if($where != null)$this->db_evin->where($where);
			return $this->db_evin->count_all_results('suplier');
		}
}
?>