// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Animal {
  struct DataAnimal {
    uint id;
    string name;
    string animal_type;
  }

  uint public idIncrement = 1;
  mapping (uint => DataAnimal) Data;
  
  function setAnimal(string memory _name, string memory _type) public returns (string memory){
  DataAnimal memory tmp;

  tmp.id = idIncrement;
  tmp.name = _name;
  tmp.animal_type = _type;

  Data[idIncrement] = tmp;

  idIncrement++;

  return "Berhasil Tersimpan";
  }

  function getAllAnimal() public view returns (DataAnimal[] memory){
    return Data;
  }

  function getAnimalById(uint _id) public view returns (DataAnimal memory){
    return Data[_id];
  }
}