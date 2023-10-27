// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LearnMapping {

    struct Movie {
        string title;
        string director;
    }

    mapping(uint => Movie) movies;

    function addMovie(uint _id, string memory _title, string memory _director) public {
        movies[_id] = Movie(_title, _director);
    }

    function getMovie(uint _id) public view returns (Movie memory) {
        return movies[_id];
    }

    
}