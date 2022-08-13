pragma solidity ^0.8.0;

contract Library {
  
  event AddBook(address recipient, unit bookId)

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
    bookList.push(Book(bookId, name, year, author, finished));
    bookToOwner[bookId] = msg.sender;
    emit AddBook(msg.sender, bookId)
  }
}
