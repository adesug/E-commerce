<?php 
   class Model_kategori extends CI_Model
   {
      public function data_lauk_pauk(){
         return $this->db->get_where("tb_barang",array('kategori' => 'lauk pauk'));
      }
      public function data_sayur(){
         return $this->db->get_where("tb_barang",array('kategori' => 'sayur'));
      }
      public function data_bahan_pokok(){
         return $this->db->get_where("tb_barang",array('kategori' => 'bahan pokok'));
      }
      public function data_buah(){
         return $this->db->get_where("tb_barang",array('kategori' => 'buah'));
      }
      public function data_daging(){
         return $this->db->get_where("tb_barang",array('kategori' => 'daging'));
      }
      public function data_ikan(){
         return $this->db->get_where("tb_barang",array('kategori' => 'ikan'));
      }
      public function data_bumbu(){
         return $this->db->get_where("tb_barang",array('kategori' => 'bumbu'));
      }
      public function data_bahan_lain(){
         return $this->db->get_where("tb_barang",array('kategori' => 'bahan lain'));
      }
      public function data_promo(){
         return $this->db->get_where("tb_barang",array('kategori' => 'promo'));
      }
         
   }