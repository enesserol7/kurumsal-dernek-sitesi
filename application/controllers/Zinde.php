<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Zinde extends CI_Controller {
	public $viewFolder = "";
	public function __construct(){
		parent::__construct();
		$this->viewFolder = "homepage";
		$this->load->model("page_model");
		$this->load->model("gallery_model");
		$this->load->model("service_model");
		$this->load->model("slide_model");
		$this->load->model("news_model");
		$this->load->helper("text");
	}
	public function index(){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->services = $this->service_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC", array("start" => 0, "count" => 4)
		);
		$viewData->slides = $this->slide_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->galleries = $this->gallery_model->get_all(
			array(
				"isActive" => 1
			),"rank DESC", array("start" => 0, "count" => 2)
		);
		$viewData->news = $this->news_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC", array()
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->viewFolder = "home_v";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function pages($url){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->pages = $pages;
		if ($url == "galeri") {
			$page = $this->page_model->get(
				array(
					"isActive" => 1,
					"url" => $url
				),"rank ASC"
			);
			$viewData->page = $page;
			$viewData->galleries = $this->gallery_model->get_all(
				array(
					"isActive" => 1
				),"rank DESC", array()
			);
		}elseif ($url == "hizmetlerimiz") {
			$page = $this->page_model->get(
				array(
					"isActive" => 1,
					"url" => $url
				),"rank ASC"
			);
			$viewData->page = $page;
			$viewData->services = $this->service_model->get_all(
				array(
					"isActive" => 1
				),"rank DESC", array()
			);
		}else{
			$page = $this->page_model->get(
				array(
					"isActive" => 1,
					"url" => $url
				),"rank ASC"
			);
			$viewData->page = $page;
		}
		$viewData->viewFolder = "page_v";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function about_us(){
		$viewData = new stdClass();
		$viewData->viewFolder = "about_v";
		$viewData->pageTitle = "Hakkımızda";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	/*public function services(){
		$viewData = new stdClass();
		$viewData->viewFolder = "services_v";
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->pageTitle = "Hizmetlerimiz";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function gallery(){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->pages = $pages;
		$viewData->galleries = $this->gallery_model->get_all(
			array(
				"isActive" => 1
			),"rank DESC"
		);
		$viewData->page = "";
		$viewData->viewFolder = "gallery_v";
		$viewData->pageTitle = "Galeri";
		$this->load->view($viewData->viewFolder,$viewData);
	}*/
	public function contact_us(){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->viewFolder = "contact_v";
		$viewData->pageTitle = "İletişim";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function blog_detail($url){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->news = $this->news_model->get(
			array(
				"isActive" => 1,
				"url" => $url
			)
		);
		$viewData->other_news = $this->news_model->get_all(
			array(
				"isActive" => 1,
				"id !=" => $viewData->news->id
			),"rand()", array("start" => 0, "count" => 4)
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->viewFolder = "blogDetail_v";
		$viewData->pageTitle = "Burası Blog Başlığı";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function service_detail($url){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->service = $this->service_model->get(
			array(
				"isActive" => 1,
				"url" => $url
			)
		);
		$viewData->other_services = $this->service_model->get_all(
			array(
				"isActive" => 1,
				"id !=" => $viewData->service->id
			),"rand()", array("start" => 0, "count" => 4)
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->viewFolder = "serviceDetail_v";
		$this->load->view($viewData->viewFolder,$viewData);
	}
	public function portfolio_detail(){
		$viewData = new stdClass();
		$pages = $this->page_model->get_all(
			array(
				"isActive" => 1
			),"rank ASC"
		);
		$viewData->pages = $pages;
		$viewData->page = "";
		$viewData->viewFolder = "portfolioDetail_v";
		$viewData->pageTitle = "Burası Portfolyo Başlığı";
		$this->load->view($viewData->viewFolder,$viewData);
	}
}
