// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Data{
    struct Belajar{
        string nama;
        int gedung;
        int kamar;
    }

    mapping (address => Belajar ) data;

    function setDataBelajar(string memory _nama, int _gedung, int _kamar) public returns (string memory){
        Belajar storage tmp = data [msg.sender];

        tmp.nama = _nama;
        tmp.gedung = _gedung;
        tmp.kamar = _kamar;

        return "Data Tersimpan";
    }

    function getDataBelajar() public view returns (Belajar memory) {
       return data[msg.sender];
    }

    function kondisi() public view returns (string memory) {
        Belajar storage isi = data[msg.sender];
        return isi.kamar != 0 ? "Kamar tersisi" : "Kamar kosong";
    }
}