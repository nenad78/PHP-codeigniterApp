<?php 
	class Article_model extends CI_Model {
		public function __construct() {
			$this->load->database();
		}

		public function get_all_articles() {
			$query = $this->db->get('articles');
			return $query->result_array();
		}

		public function get_article($id) {
			$query = $this->db->get_where('articles', array('id' => $id));
			return $query->row_array();
		}

		public function post_article($article_image) {
			$data = array(
				'title' => $this->input->post('title'),
				'sub_title' => $this->input->post('sub_title'),
				'text' => $this->input->post('text'),
				'category_id' => $this->input->post('category_id'),
				'image' => $article_image
			);
			return $this->db->insert('articles', $data);
		}

		public function delete_article($id) {
			$this->db->where('id', $id);
			return $this->db->delete('articles');
		}
	}