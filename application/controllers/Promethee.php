<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class promethee extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 /**
     * @author Fian Hidayah
	 * Model untuk select data untuk master
	 */
	 public function __construct() {
		parent::__construct();
		$this->load->model('mgudang_model');
		$this->load->model('promethee_model');
		$this->db_evin = $this->load->database('motto', TRUE);
		$this->load->helper(array('form', 'url', 'file','download'));
    }
	public function index(){redirect(base_url("admin"));}
	public function cek_harga($valuenya){
		if($valuenya<=30000){
			return 10;
		}
		elseif ($valuenya>30000 && $valuenya<=80000) {
			return 9;
		}
		elseif ($valuenya>80000 && $valuenya<=130000) {
			return 8;
		}
		elseif ($valuenya>130000 && $valuenya<=180000) {
			return 7;
		}
		elseif ($valuenya>230000 && $valuenya<=280000) {
			return 6;
		}
		elseif ($valuenya>280000 && $valuenya<=330000) {
			return 5;
		}
		elseif ($valuenya>330000 && $valuenya<=380000) {
			return 4;
		}
		elseif ($valuenya>430000 && $valuenya<=480000) {
			return 3;
		}
		elseif ($valuenya>530000 && $valuenya<=580000) {
			return 2;
		}
		elseif ($valuenya>580000) {
			return 1;
		}
	}
	public function preferensi($value,$sub){ 
	    if($sub['type']==1){      //-- usual` 
	        return $value==0?0:1; 
	    }elseif($sub['type']==2){ //-- linear 
	        return $value==0?0:($value>$sub['p']?1:abs($value/$sub['p'])); 
	    }elseif($sub['type']==3){ //-- quasi 
	        return $value<=$sub['q']?0:1; 
	    }elseif($sub['type']==4){ //-- linear quasi 
	        return $value<$sub['q']?0:($value>$sub['p']?1:abs($value/($sub['p']-$sub['q']))); 
	    }elseif($sub['type']==5){ //-- level 
	        return $value==$sub['q']?0:($value>$sub['p']?1:0.5); 
	    }elseif($sub['type']==6){ //-- gaussian 
	        return $value==0?0:1-exp(-1*pow($value,2)/(2*pow($sub['s'],2))); 
	    } 
	}
	public function rangking($bulan)
	{	
		$this->promethee_model->hapus_semua_data();
		$ambil_data="";
		if ($bulan == "lalu") {
			$ambil_data = $this->promethee_model->promethee_get_data_lalu();
		}
		else{
			$ambil_data = $this->promethee_model->promethee_get_data();
		}
		$maks_alternatif = count($ambil_data);
		$huruf = "A";
		foreach ($ambil_data as $key) {
			$insert_id = $this->promethee_model->insert_alternatif($key->nm_produk,$huruf);
			$huruf = chr(ord($huruf) + 1);
		}
		$this->promethee_model->hapus_data_hasil();
		$i=1;
		foreach ($ambil_data as $key) {
			$jumlah_barang = (int)$key->terjual + (int)$key->stok_produk;
			$kriteria1 = $key->terjual/$jumlah_barang*60/10;
			$kriteria2 = $jumlah_barang/$key->stok_produk*25/10;
			$kriteria3 = $this->cek_harga((int)$key->harga_produk);
			$this->promethee_model->insert_eval($i,"1",$kriteria1);
			$this->promethee_model->insert_eval($i,"2",$kriteria2);
			$this->promethee_model->insert_eval($i,"3",$kriteria3);
			$i++;
		}
		$hasilnya = $this->promethee_model->promethee_get_hasil();
		$data=array(); 
		$alternative='';
		$alternatives=array(); 
		$sub=''; 
		$subs=array(); 
		foreach($hasilnya as $r){ 
		    if($sub!=$r->id_sub_criteria){ 
		        $subs[$r->id_sub_criteria]=array( 
		        'type'=>$r->id_type, 
		        'p'=>$r->p, 
		        'q'=>$r->q, 
		        's'=>$r->s 
		        ); 
		    } 
		    if($alternative!=$r->code){ 
		        $alternative=$r->code; 
		        $alternatives[$r->code]=$r->alternative; 
		        $data[$r->code]=array(); 
		    } 
		    $data[$r->code][$r->id_sub_criteria]=$r->value; 
		}
		$d=array(); 
		foreach($alternatives as $code_A=>$name_A){ 
		    $d[$code_A]=array(); 
		    foreach($alternatives as $code_B=>$name_B){ 
		        if($code_A!=$code_B){ 
		            $d[$code_A][$code_B]=array(); 
		            foreach($subs as $sub=>$v){
		                $d[$code_A][$code_B][$sub]=abs($data[$code_A][$sub]-$data[$code_B][$sub]);
		            } 
		        } 
		    } 
		} 
		$P=array(); 
		foreach($alternatives as $code_A=>$name_A){ 
		    $P[$code_A]=array(); 
		    foreach($alternatives as $code_B=>$name_B){ 
		        if($code_A!=$code_B){ 
		            $P[$code_A][$code_B]=array(); 
		            foreach($subs as $sub=>$v){ 
		                $P[$code_A][$code_B][$sub]=$this->preferensi($d[$code_A][$code_B][$sub],$subs[$sub]); 
		            } 
		        } 
		    } 
		}
		$j=count($subs); 
		$sigma=array(); 
		foreach($alternatives as $code_A=>$name_A){ 
		    $sigma[$code_A]=array(); 
		    foreach($alternatives as $code_B=>$name_B){ 
		        if($code_A!=$code_B){ 
		            $sigma[$code_A][$code_B]=array_sum($P[$code_A][$code_B])/$j; 
		        } 
		    } 
		}
		$leaving_flow=array(); 
		$devider=count($sigma)-1; 
		foreach($sigma as $code_A=>$value_A){
			if(array_sum($value_A) == 0){
				$leaving_flow[$code_A] = 0;
			}
			else {
				$leaving_flow[$code_A]=array_sum($value_A)/$devider;
			}
		    
		} 
		//-- menghitung Entering Flow 
		$entering_flow=array(); 
		foreach($sigma as $code_A=>$item_A){ 
		    foreach($item_A as $code_B=>$value_B){ 
		        if(!isset($entering_flow[$code_B]))
		        	{$entering_flow[$code_B]=0;}
		        else{ 
		        $entering_flow[$code_B]+=$value_B; 
		    	}
		    } 
		} 
		foreach($sigma as $code_A=>$value_A){ 
		    $entering_flow[$code_A]/=$devider; 
		} 
		$net_flow=array();
		foreach($leaving_flow as $code_A=>$value_A){ 
		    $net_flow[$code_A]=$value_A - $entering_flow[$code_A];
		}
		arsort($net_flow);
		$data_net = $net_flow;
		return $data_net;
		// $data['rangking'] = $net_flow;
		// $data['alternatifnya'] = $alternatives;
		// $this->load->view('baseadmin/header.php');
		// $this->load->view('gudang/coba_pro.php',$data);
		// $this->load->view('baseadmin/footer.php');
	}

	public function cek_login(){
		if ($this->session->userdata('name')==null){
			redirect(base_url("admin/login"));
		}	
	}
}
?>