<?php 
	class Articles extends CI_Controller {
		public function index() {
			$data['title'] = 'Latest News';
			$data['articles'] = $this->article_model->get_all_articles();
			
			$data['categories'] = $this->category_model->get_all_categories();

			$this->load->view('templates/header', $data);
			$this->load->view('articles/index', $data);
			$this->load->view('templates/footer');
		}

		public function view($id) {
			$data['article'] = $this->article_model->get_article($id);
			 
			$data['comments'] = $this->comment_model->get_comments($id);

			$data['categories'] = $this->category_model->get_all_categories();

			$this->load->view('templates/header', $data);
			$this->load->view('articles/view', $data);
			$this->load->view('templates/footer');
		}

		public function articles_category_view($id) {
			$data['articles_category_view'] = $this->category_model->get_articles_category($id);

			$data['categories'] = $this->category_model->get_all_categories();

			$this->load->view('templates/header', $data);
			$this->load->view('articles/category_view', $data);
			$this->load->view('templates/footer');
		}
	}