<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Eglise extends CI_Controller {

	/**
	 * Eglise Controller
	 *
	 * This controller is used for all "Eglise Operations"
	 */
	 
	public function __construct() {
		parent::__construct();
		$this->auth->restrict();
		$this->load->library('layout');
		$this->load->helper('form');
	}
	
	public function index($type='')
	{
				
		$this->layout->add_css('sb-admin');
		
		// SB Admin Scripts - Include with every page
		$this->layout->add_js('sb-admin');
		
				
		
		$this->layout->view('eglise_form');
	}
}
