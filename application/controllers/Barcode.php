<?php
class Barcode extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_barcode');
        $this->load->model('model_parking');
        $this->load->library('session');
    }

    public function index()
    {
        // Load the barcode view
        $this->load->view('barcode/index');
    }

    public function checkOccupancy()
    {
        $barcodeValue = $this->input->post('barcode_value');

        // Check if the barcode is available and get occupancy status
        $occupancy = $this->model_barcode->checkBarcodeOccupancy($barcodeValue);

        if ($occupancy === null) {
            // Barcode not found
            $this->session->set_flashdata('message', 'Barcode not found');
        } else {
            if ($occupancy == 1) {
                // Unoccupied
                redirect('parking/create');
            } else {
                $parkingCode = $this->model_barcode->getParkingCode($barcodeValue);

                // Check if the 'parking_code' is available in the 'parking' table
                $parkingId = $this->model_parking->getParkingIdByCode($parkingCode);

                if ($parkingId !== null) {
                    // Redirect to 'parking/edit' with the corresponding 'id'
                    redirect('parking/edit/' . $parkingId);
                } else {
                    // Handle the case when 'parking_code' is not found in 'parking'
                    $this->session->set_flashdata('message', 'Error: Parking code not found in parking table');
                    redirect('barcode');
                }
            }
        }

        // Redirect back to the barcode section
        redirect('barcode');
    }
}