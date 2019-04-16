<?php 
	class Category_model extends CI_Model {
		public function get_all_categories() {
			$query = $this->db->get('categories');
			return $query->result_array();
		}

		public function get_articles_category($id) {
			$this->db->where('category_id', $id);
			$query = $this->db->get('articles');
			return $query->result_array();
		}
	}