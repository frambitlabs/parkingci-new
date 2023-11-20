<?php
class Model_barcode extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function checkBarcodeOccupancy($barcodeValue)
    {
        $query = $this->db->get_where('barcode', array('barcode_value' => $barcodeValue));

        if ($query->num_rows() > 0) {
            $row = $query->row();
            return $row->occupancy;
        }

        return null;
    }

    public function getParkingCode($barcodeValue)
    {
        $query = $this->db->get_where('barcode', array('barcode_value' => $barcodeValue));

        if ($query->num_rows() > 0) {
            $row = $query->row();
            return $row->parking_code;
        }

        return null;
    }

    
}
