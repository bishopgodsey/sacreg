<?php if(!defined('BASEPATH')) exit('No direct Script allowed');

class Layout {

	private $CI;
	private $params = array();
	private $theme = 'default';
	
	
	/*
	* Constructor
	*
	*/
	public function __construct() {
		$this->CI =& get_instance();
		$this->params['output'] = '';
		$this->CI->load->helper('assets');
		
		//default application title. We take the method and controller
		$this->params['title'] = ucfirst($this->CI->router->fetch_method()).' - '.ucfirst($this->CI->router->fetch_class());
		
		//application charset
		$this->params['charset'] = $this->CI->config->item('charset');
		
		//application css
		$this->params['css'] = array();
		
		//application js
		$this->params['js'] = array();
		
		//add default css and js
		if(file_exists('./application/helpers/template/'.$this->theme.'_helper.php')) {
			
			$this->CI->load->helper('template/'.$this->theme);
			//add default css
			if(function_exists('get_default_css')) {
				
				$default_css = get_default_css();
				
				if(is_array($default_css) && !empty($default_css)) {
					$this->params['css'] = $default_css;
				}
				
			}
			
			// add default js
			if(function_exists('get_default_js')) {
				$default_js = get_default_js();
			
				if(is_array($default_js) && !empty($default_js)) {
					$this->params['js'] = $default_js;
				}
			}
			
			//add default top menu
			
			if(function_exists('get_default_top_menu')) {
				$this->params['menu']['top'] = get_default_top_menu();
			}
			
			//add default left menu
			if(function_exists('get_default_left_menu')) {
				$this->params['menu']['left'] = get_default_left_menu();
			}
			
			
		}
	}
	
	public function view($name, $data=array()) {
		$this->params['output'] .= $this->CI->load->view($name,$data,true);
		
		$this->CI->load->view('../themes/'.$this->theme,$this->params);
	}
	
	public function views($name,$data=array()) {
		$this->params['output'] .= $this->CI->load->view($name,$data,true);
		
		return $this;
	}
	
	public function set_title($title) {
		if(is_string($title) and !empty($title)) {
			$this->params['title'] = $title;
			return true;
		}
		
		return false;
	}
	
	public function set_charset($charset) {
	
		if(is_string($charset) and !empty($charset)) {
			$this->params['charset'] = $charset;
			
			return true;
		}
		
		return false;
	}
	
	public function add_css($file_name){
	
		if(is_string($file_name) and !empty($file_name)) {
			if(file_exists('./assets/css/'.$file_name) or file_exists('./assets/css/'.$file_name.'.css')) {
				$this->params['css'][] = css_url($file_name);
				return true;
			}
			
			return false;
		}
		
		return false;
	}
	
	public function add_js($file_name){
	
		if(is_string($file_name) and !empty($file_name)) {
			if(file_exists('./assets/js/'.$file_name) or file_exists('./assets/js/'.$file_name.'.js')) {
				$this->params['js'][] = js_url($file_name);
				return true;
			}
			
			return false;
		}else{
			if(is_array($file_name)){
			}
		}
		
		
		return false;
	}
	
	function add_css_files($file_names) {
		if(is_array($file_names) && !empty($file_names)) {
			foreach($file_names as $file_name) {
				$this->add_css($file_name);
			}
			return true;
		}
		return false;
	}
	
	function add_js_files($file_names) {
		
		if(is_array($file_names) && !empty($file_names)){
			foreach($file_names as $file_name) {
				$this->add_js($file_name);
			}
		}
	}
	
	public function set_theme($file_name) {
		if(is_string($file_name) && !empty($file_name)) {
		
			if(file_exists('./application/themes/'.$file_name.'.php')) {
				$this->theme = $file_name;
				return true;
			}
			return false;
		}
		return false;
	}
	
}

/* End of file layout.php */
/* Location : ./application/libraries/layout.php */