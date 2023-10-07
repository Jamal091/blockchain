pragma solidity ^0.8;


contract Movie{
    address owner;
    string title;
    int durasi;
    string TahunRilis;
    string genre;
    string publisher;
    bool isiPrimer;

    constructor(){
        title = "Spiderman";
        durasi = 120;
        TahunRilis = "2020";
        genre = "action";
        publisher = "marvel";
        isiPrimer = true;
        owner = msg.sender;
    }

    function selTitle(string memory titleBaru) public returns (string memory){
        require(msg.sender == owner,"Maaf Bukan Owner");
        title = titleBaru;

        return titleBaru;
    }

    function isMoviePremier() public view returns (string memory){
        require(msg.sender == owner, "Maaf Bukan Owner");

        if (isiPrimer) {
            return "Movie Is Premiering";
        } else {
            return "Movie is Not Preimering";
        }
    }
}