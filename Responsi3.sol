// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MendaftarSIM {
    string Nama;
    int NIK;
    int Umur;
    string  Alamat;
    int JenisSIM;

    constructor(){
        Nama = "Jamaluddin. T";
        NIK = 103032390210;
        Umur = 22;
        Alamat = "BuahBatu";
        JenisSIM = 3;
    }

    // Getter dan Setter untuk Nama
    function getNama() public view returns (string memory) {
        return Nama;
    }

    function setNama(string memory _newNama) public {
        Nama = _newNama;
    }

    // Getter dan Setter untuk NIK
    function getNIK() public view returns (int) {
        return NIK;
    }

    function setNIK(int _newNIK) public {
        NIK = _newNIK;
    }

    // Getter dan Setter untuk Umur
    function getUmur() public view returns (int) {
        return Umur;
    }

    function setUmur(int _newUmur) public {
        Umur = _newUmur;
    }

    // Getter dan Setter untuk Alamat
    function getAlamat() public view returns (string memory) {
        return Alamat;
    }

    function setAlamat(string memory _newAlamat) public {
        Alamat = _newAlamat;
    }

    // Getter dan Setter untuk Jenis SIM
    function getJenis() public view returns (int) {
        return JenisSIM;
    }

    function setJenis(int _newJenis) public {
        JenisSIM = _newJenis;
    }

    //Menentukan apakah seseorang berhak memiliki SIM berdasarkan umur
    function Status() public view returns (string memory){
        if(Umur >= 17){
            return "Boleh Mendaftar Buat SIM";
        } else {
            return "Belum Boleh Mendaftar Buat SIM";
        }
    }

    function Jenis() public view returns (string memory){
        if(JenisSIM == 1){
            return "SIM Mobil Pribadi";
        }else if(JenisSIM == 2){
            return "SIM Mobil Truck";
        } else if(JenisSIM == 3){
            return "SIM Motor";
        }else{
            return "Belum Menentukan Jenis SIM";
        }
    }
}