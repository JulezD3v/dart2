
// You are to build a simple console app in Dart to manage books in a library.Requirements:
// Create a Book class with the following: 
// Fields: title (String), author (String), year (int), isBorrowed (bool, default false).
// A constructor to initialize a book.
// A method borrowBook() that sets isBorrowed to true, but should throw an exception if the book is already borrowed.
// A method returnBook() that sets isBorrowed to false.
// Create a Library class with: 
// A List<Book> to hold books.
// A method addBook(Book book) to add a new book.
// A method searchByTitle(String keyword) that returns a list of books containing the keyword in their title (case insensitive).
// A method listAvailableBooks() that returns all books not borrowed.

// In main(): 
// Add at least 5 books to the library.
// Let the user interact via console input with a menu:
// 1. List available books
// 2. Search book by title
// 3. Borrow a book
// 4. Return a book
// 5. Exit
// * Ensure you don't use built-in collections functions
// (6 Points)


// Create an abstract class Vehicle with: 
 
//  Fields: brand (String) and speed (int). 
 
//  An abstract method move() that must be implemented by subclasses. 
 
 
 
//  Create two mixins: 
 
//  Electric → adds a method chargeBattery(). 
 
//  FuelPowered → adds a method refuel(). 
 
 
 
//  Create concrete classes: 
//  Car that extends Vehicle and mixes in FuelPowered. 
//  Bike that extends Vehicle (no mixins). 
//  ElectricScooter that extends Vehicle and mixes in Electric.

// In main(): create a list of different vehicles
//(4 Points)