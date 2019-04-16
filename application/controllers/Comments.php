<?php 
	class Comments extends CI_Controller {
		public function create($id) {
			if(!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}

			$data['article'] = $this->article_model->get_article($id);
			$article_id = $data['article']['id'];
			
			$data['categories'] = $this->category_model->get_all_categories();

			$data['comments'] = $this->comment_model->get_comments($id);

			$this->form_validation->set_rules('name', 'Name', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('comment', 'Comment', 'required');

			if($this->form_validation->run() == false) {
				$this->load->view('templates/header', $data);
				$this->load->view('articles/view', $data);
				$this->load->view('templates/footer');
			} else {
				$this->comment_model->create_comment($id);

				$this->session->set_flashdata('comment_created', 'Comment successfully created');
				redirect('articles/view/'. $article_id);	
			}			
		}

		public function delete($id) {
			if(!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
			$article_id = $this->input->post('article_id');
						
			$this->comment_model->delete_comment($id);

			$this->session->set_flashdata('comment_deleted', 'Comment successfully deleted');
			redirect('articles/view/'. $article_id);
		}
	}