<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->helper('form');
		$this->load->library('form_validation');

		//$this->load->model('user_model');

		$this->load->library('auth');

		$this->lang->load('users');
	}
	
	public function index() {
	
		//check if the user is connected, and redirect him to homepage. //TODO improve this
		if(!$this->auth->is_logged_in()) {
		
			$this->login();
			
		}else {
			redirect(base_url());
		}
		
	}
	
	public function login() {
	
		if (isset($_POST['log-me-in']))
		{
			$remember = $this->input->post('remember') == '1' ? TRUE : FALSE;
			
			// Try to login
			if ($this->auth->login($this->input->post('login'), $this->input->post('password'), $remember) === TRUE)
			{
				//TODO find a way to improve this. I'm trying to find the last requested page and redirect him there
				$requested_page = $this->session->flashdata('requested_page');
				if(!empty($requested_page)) {
					redirect($requested_page);
				}else {
					redirect();
				}
			}else{
				redirect('login');
			}
		}
		
		$this->load->view('login_view');
    }

    /**
     * Allows user to log out and redirects him to the home page.
    **/
    public function logout() {

        $this->auth->logout();
    }
}
