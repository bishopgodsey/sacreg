<?php 
class Permission_model extends CI_Model {

    private $table_name = 'permissions';

    public function __construct() {
        parent::__construct();
    }
    public function get_all($filters = array()) {
        
        if(!empty($filters)) {
            $this->db->where($filters);
        }
        
        return $this->db->get($this->table_name)->result();
    }

    public function save_permission($data) {
        
        $this->db->insert($this->table_name,$data);

        return (bool) $this->db->affected_rows();
    }

    public function update_permission($data) {
        
        $this->db->where('permission_id',$data['permission_id']);
        unset($data['permission_id']);

        $this->db->update($this->table_name, $data);

        return true;
    }

    public function delete($permission_id) {
        $this->db->where('permission_id',$permission_id);

        $this->db->delete($this->table_name);

        return (bool) $this->db->affected_rows();
    }

    public function find($permission_id) {
    
        return $this->db->where('permission_id',$permission_id)->get($this->table_name)->row();
    }

}
