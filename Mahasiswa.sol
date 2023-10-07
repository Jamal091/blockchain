// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mahasiswa{
    string Name;
    int NIM;
    int Semester;
    string Prodi;
    string Fakultas;
    bool IsActive;

    constructor(){
        Name = "JamaluddinT";
        NIM = 103032390210;
        Semester = 7;
        Prodi = "Teknologi Informasi";
        Fakultas = "Informatika";
        IsActive = true;
    }

    //Getter Untuk Name
    function getName() public view returns (string memory) {
        return Name;
    }
    //Setter Untuk Name
    function setName(string memory _name) public {
        Name = _name;
    }

    //Getter Untuk NIM
    function getNIM() public view returns (int) {
        return NIM;
    }
    //Setter Untuk NIM
    function setNIM(int _nim) public {
        NIM = _nim;
    }

    //Getter Untuk Semester
    function getSemester() public view returns (int) {
        return Semester;
    }
    //Setter Unturk Semester
    function setSemester(int _semester) public {
        Semester = _semester;
    }

    //Getter Untuk Prodi
    function getProdi() public view returns (string memory) {
        return Prodi;
    }
    //Setter Untuk Prodi
    function setProdi(string memory _prodi) public {
        Prodi = _prodi;
    }

    //Getter Untuk Fakultas
    function getFakultas() public view returns (string memory) {
        return Fakultas;
    }
    //Setter Untuk Fakultas
    function setFakultas(string memory _fakultas) public {
        Fakultas = _fakultas;
    }

    //Getter Untuk IsActive
    function getIsActive() public view returns (bool) {
        return IsActive;
    }
    //Setter Untuk IsActive
    function setIsActive(bool _isactive) public {
        IsActive = _isactive;
    }

    function CheckMahasiswaActive() public view returns (string memory){
        if (IsActive) {
            return "Mahasiswa Aktif";
        } else {
            return "Mahasiswa Tidak Aktif";
        }
    }

    function CheckSemesterInProgress() public view returns (string memory){
        if (Semester % 2 == 1) {
            return "Mahasiswa Semester Ganjil";
        } else {
            return "Mahasiswa Semester Genap";
        }
    }
}