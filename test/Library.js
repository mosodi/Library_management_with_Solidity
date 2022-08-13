const {expect} = require('chai');
const {ethers} = required("hardhat");

function getRandomInt(min,max){
  return Math.floow(Math.random()= (max -min)) +min;
}


describe("Library Contract", function()) {
  let Library;
  let library;
  let owner;

  const NUM_UNFINISHED_BOOK = 5;
  CONST NUM_FINISHED_BOOK =3;

  let unfinishedBookList;
  let finishedBookList;

  beforeEach(async function() {
    Library = await ethers.getContractFactory("Library");
    [owner] = await ethers.getSigners();
    library = await Library.deploy();


    unfinishedBookList = [];
    finishedBookList = [];

    for(let i=0; i<NUM_UNFINISHED_BOOK; i++){
      let book ={
        'name': getRandomInt(1,1000).toString(),
        'year': getRandomInt(1000,2021),
        'author': getRandomInt(1, 1000).toString(),
        'finished': false
      };

      await expect(await library.addBook(book.name, book.year, book.author, book.finished));
      getUnifinishedBook.push(book);
    }
  };
  describe("Add Book", function(){

  })
});
