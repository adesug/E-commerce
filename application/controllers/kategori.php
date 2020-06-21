<?php 

class Kategori extends CI_Controller{
    public function lauk_pauk()
    {
        $data['lauk_pauk'] = $this->model_kategori->data_lauk_pauk()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('lauk_pauk',$data);
        $this->load->view('templates/footer'); 
    }
    public function sayur()
    {
        $data['sayur'] = $this->model_kategori->data_sayur()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('sayur',$data);
        $this->load->view('templates/footer'); 
    }
    public function bahan_pokok()
    {
        $data['bahan_pokok'] = $this->model_kategori->data_bahan_pokok()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('bahan_pokok',$data);
        $this->load->view('templates/footer'); 
    }
    public function buah()
    {
        $data['buah'] = $this->model_kategori->data_buah()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buah',$data);
        $this->load->view('templates/footer'); 
    }
    public function daging()
    {
        $data['daging'] = $this->model_kategori->data_daging()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('daging',$data);
        $this->load->view('templates/footer'); 
    }
    public function ikan()
    {
        $data['ikan'] = $this->model_kategori->data_ikan()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('ikan',$data);
        $this->load->view('templates/footer'); 
    }
    public function bumbu()
    {
        $data['bumbu'] = $this->model_kategori->data_bumbu()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('bumbu',$data);
        $this->load->view('templates/footer'); 
    }
    public function bahan_lain()
    {
        $data['bahan_lain'] = $this->model_kategori->data_bahan_lain()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('bahan_lain',$data);
        $this->load->view('templates/footer'); 
    }
    public function promo()
    {
        $data['promo'] = $this->model_kategori->data_promo()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('promo',$data);
        $this->load->view('templates/footer'); 
    }

}