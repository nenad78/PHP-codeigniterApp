<?php 
	class Admin_model extends CI_Model {
		public function login($username, $password) {
			$this->db->where('username', $username);
			$this->db->where('password', $password);
			$query = $this->db->get('admin');

			$admin_info[] = '';

			if($query->num_rows() == 1) {
				$result = $query->result_array();	

				foreach($result as $k => $v) {
					foreach($v as $a => $b)
						$admin_info[] .= $b;
				}
				return $admin_info;
			} else {
				return false;
			}			 
		}		
	}