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
  function _getBookList(bool finished) private view returns (Book[] memory){
    Book[] memory temporary = new Book[] (bookList.length);
    unint counter = 0;
    for (unit i=0; i<bookList.lenght; i++){
      if (bookToOwner[i] == msg.sender) {
        temporary[counter] = bookList[i];
        counter++;
      }

    }

    Book[] memory result = new Book[](counter);
    for(uint i=0; i<counter; i++){
      result[i] = temporary[i];
    }
    return results;
  }

  function getFinishedBook() external view returns (Book[] memory) {
    return _getBookList(true);
    
  }
    function getUnifinishedBook() external view returns (Book[] memory) {
      return _getBookList(false)

    }
}
