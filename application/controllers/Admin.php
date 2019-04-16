<?php 
	class Admin extends CI_Controller {
		public function index() {
			$data['title'] = 'Log In';

			$this->load->view('admin/templates_header');
			$this->load->view('admin/login', $data);
			$this->load->view('admin/templates_footer');
		}

		public function login() {
			$data['title'] = 'Articles';

			$this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if($this->form_validation->run() == false) {
            	redirect('admin');
            } else {
            	$username = $this->input->post('username');
            	$password = md5($this->input->post('password'));

            	$admin = $this->admin_model->login($username, $password);
            	$user_id = $admin[1];
            	$user_status = $admin[4];

            	if($user_id && $user_status) {
            		$admin_data = array(
            			'user_id' => $user_id,
            			'user_status' => $user_status,
            			'username' => $username,
            			'logged_in' => true
            		);

            		$this->session->set_userdata($admin_data);

					$this->session->set_flashdata('admin_loggedin', 'You are logged in');
					redirect('admin/view');
            	} else {
            		$this->session->set_flashdata('login_failed', 'Invalid login');
            		redirect('admin');
            	}
            }
		}

		public function logout() {
			$this->session->unset_userdata('user_id');
			$this->session->unset_userdata('user_status');
			$this->session->unset_userdata('username');
			$this->session->unset_userdata('logged_in');

			$this->session->set_flashdata('admin_loggedout', 'You are logged out');
			redirect('admin');
		}

		public function view() {
			$data['title'] = 'Articles';

			$data['articles'] = $this->article_model->get_all_articles();
			
			$this->load->view('admin/templates_header');
			$this->load->view('admin/view', $data);
			$this->load->view('admin/templates_footer');
		}

		public function article_view($id) {
			$data['article'] = $this->article_model->get_article($id);
			$data['comments'] = $this->comment_model->get_comments($id);

			$this->load->view('admin/templates_header');
			$this->load->view('admin/article_view', $data);
			$this->load->view('admin/templates_footer');
		}

		public function create_article() {
			if($this->session->userdata('user_status') != 4) {
				redirect('admin');
			}

			$data['title'] = 'Create Article';
			$data['categories'] = $this->category_model->get_all_categories();

			$this->load->view('admin/templates_header');
			$this->load->view('admin/create_article', $data);
			$this->load->view('admin/templates_footer');
		}

		public function post_article() {
			$this->form_validation->set_rules('title', 'Title', 'required');
			$this->form_validation->set_rules('sub_title', 'Sub Title', 'required');
			$this->form_validation->set_rules('text', 'Text', 'required');

			if($this->form_validation->run() == false) {
				redirect('admin/create_article');
			} else {
				$config['upload_path'] = './assets/images/articles';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = '2048';
				$config['max_width'] = '3000';
				$config['max_height'] = '3000';

				$this->load->library('upload', $config);
 
				if(!$this->upload->do_upload()) {
					$errors = array('error' => $this->upload->display_errors());
					$article_image = 'no_image.jpg';					
				} else {
					$data = array('upload_data' => $this->upload->data());
					$article_image = $_FILES['userfile']['name'];
				}
				
				$this->article_model->post_article($article_image);

				$this->session->set_flashdata('article_created', 'You have successfully created the article');
				redirect('admin/view');
			}
		}	

		public function delete_article($id) {
			if($this->session->userdata('user_status') != 4) {
				redirect('admin');
			}

			$this->article_model->delete_article($id);

			$this->session->set_flashdata('article_deleted', 'You have successfully deleted the article');
			redirect('admin/view');
		}

		public function create_comment($id) {
			if($this->session->userdata('user_status') != 4) {
				redirect('admin');
			}

			$this->form_validation->set_rules('name', 'Name', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('comment', 'Comment', 'required');

			if($this->form_validation->run() == false) {
				redirect('admin/article_view/'. $id);
			} else {
				$this->comment_model->create_comment($id);

				$this->session->set_flashdata('comment_created', 'You have successfully created comment');
				redirect('admin/article_view/'. $id);
			}
		}

		public function delete_comment($id) {
			if($this->session->userdata('user_status') != 4) {
				redirect('admin');
			}
			
			$article_id = $this->input->post('article_id');

			$this->comment_model->delete_comment($id);

			$this->session->set_flashdata('comment_deleted', 'You have successfully deleted the comment');
			redirect('admin/article_view/'. $article_id);
		}
	}