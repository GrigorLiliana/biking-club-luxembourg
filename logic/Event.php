<?php
namespace MyTest;

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
        if(is_string($name) && (strlen($name) >= 3 && strlen($name)<= 20))
            $this->_name = $name;
        else
        echo 'Name not set cause you doesn\'t match constraints (3-20 characters)<br>';
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
        if(is_string($breed) && (strlen($breed) >= 3 && strlen($breed)<= 20))
            $this->_breed = $breed;
        else
            echo 'Breed not set cause you doesn\'t match constraints (3-20 characters)<br>';
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
        ]
    }
}
?>
