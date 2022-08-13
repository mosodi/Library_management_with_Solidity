pragma solidity ^0.8.0;

contract Library {

  struct Book {

    unint id;
    string name;
    unint year;
    string author;
    bool finished;

  }

book[] private booklist;

//Mapping of Book id to the wallet address of the user adding the new book under their name

mapping(unint256 => address) bookToOwner;

function addBook(string name, unint16 year, string memory author, bool finished) external {
  unint bookId = bookList.length;
  bookList.push(Book(bookId, name, year, author, finished))
}
}
