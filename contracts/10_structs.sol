// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LearnStruct {
    struct Movie {
        string title;
        string director;
        uint id;
    }

    Movie movie;

    function setMovie(string memory _title, string memory _director, uint _id) public  {
        movie = Movie(_title, _director, _id);
    }

    function getMovie() public view returns (Movie memory) {
        return movie;
    }

    function getMovieId() public view returns (uint) {
        return movie.id;
    }
}
