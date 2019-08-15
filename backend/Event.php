<?php

namespace MyTest;

require_once 'database-connection.php';

class Event {
    private $_title;
    private $_descriptionEN;
    private $_descriptionD;
    private $_coverPicture;
    private $_pictureGallery = [];
    private $_date;

    public function __construct($title, $descriptionEN, $descriptionD, $coverPicture, $pictureGallery, $date){
        $this->setTitle($title);
        $this->setDescriptionEN($descriptionEN);
        $this->setDescriptionD($descriptionD);
        $this->setCoverPicture($coverPicture);
        $this->setPictureGallery($pictureGallery);
        $this->setDate($date);
    }

    // Setters
    public function setTitle($title) {
        if(is_string($title) && (strlen($title) >= 3 && strlen($title)<= 20))
        $this->_title = $title;
    }

    public function setDescriptionEN($descriptionEN) {

    }
    public function setDescriptionD($descriptionD) {

    }

    public function setCoverPicture($coverPicture) {

    }
    public function setPictureGallery($pictureGallery) {
        if(is_string($pictureGallery) && (strlen($pictureGallery) >= 3 && strlen($pictureGallery)<= 20))
            $this->_pictureGallery = $pictureGallery;


    }

    public function setDate($date) {

    }
    // Getters
    public function getTitle() {
        return $this->_title;
    }
    public function getDescriptionEN() {
        return $this->_descriptionEN;
    }
    public function getDescriptionD() {
        return $this->_descriptionD;
    }
    public function getCoverPicture() {
        return $this->_coverGallery;
    }
    public function getPictureGallery() {
        return $this->_pictureGallery;
    }
    public function getDate() {
        return $this->_date;
    }

    //Get all Infos
    public function getInfos(){
        return [
            $this->getTitle(),
            $this->getDescriptionEN(),
            $this->getDescriptionD(),
            $this->getCoverPicture(),
            $this->getPictureGallery(),
            $this->getDate()
        ];
    }
}
?>
