// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
pragma experimental ABIEncoderV2;
import "./responsi6.sol";

contract Responsi6 {
    struct DaftarData {
        string nama;
        string[] NIK;
        int umur;
        int JenisSIM;
    }

    mapping (address => DaftarData) data;


    function setDaftarData(string memory _nama, int _umur, int _jenissim) public returns (string memory) {
        DaftarData storage tmp = data[msg.sender];

        tmp.nama = _nama;
        tmp.umur = _umur;
        tmp.JenisSIM = _jenissim;

        return "Berhasil Menyimpan Data";
    }

    function getDaftarData() public view returns (DaftarData memory) {
        return data[msg.sender];
    }

    function tambahNIK(string memory _nik) public {
        data[msg.sender].NIK.push(_nik);
    }

    function jumlahNIK() public view returns (uint) {
        return data[msg.sender].NIK.length;
    }

     // Menentukan apakah seseorang berhak memiliki SIM berdasarkan umur
    function Status() public view returns (string memory) {
        DaftarData memory isi = data[msg.sender];
        if (isi.umur >= 17) {
            return "Boleh Mendaftar Buat SIM";
        } else {
            return "Belum Boleh Mendaftar Buat SIM";
        }
    }

    function Jenis() public view returns (string memory) {
        DaftarData memory isi = data[msg.sender];
        if (isi.JenisSIM == 1) {
            return "SIM Mobil Pribadi";
        } else if (isi.JenisSIM == 2) {
            return "SIM Mobil Truck";
        } else if (isi.JenisSIM == 3) {
            return "SIM Motor";
        } else {
            return "Belum Menentukan Jenis SIM";
        }
    }
}
