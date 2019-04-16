<?php 
	class Comment_model extends CI_Model {
		public function get_comments($id) {
			$query = $this->db->get_where('comments', array('article_id' => $id));
			return $query->result_array();

		}

		public function get_all_comments() {
			$query = $this->db->get('comments');
			return $query->result_array();
		}

		public function create_comment($id) {
			$data = array(
				'article_id' => $id,
				'name' => $this->input->post('name'),				
				'email' => $this->input->post('email'),
				'user_id' => $this->session->userdata('user_id'),
				'comment' => $this->input->post('comment')
			);

			return $this->db->insert('comments', $data);
		}

		public function delete_comment($id) {
			$this->db->where('id', $id);
			return $this->db->delete('comments');
		}
	}