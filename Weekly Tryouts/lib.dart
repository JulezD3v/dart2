import 'dart:io';


class Book {// Book Class
  String title;
  String author;
  int year;
  bool isBorrowed;

  Book(this.title, this.author, this.year, {this.isBorrowed = false});

  void borrowBook() {
    if (isBorrowed) {
      throw Exception("The book '$title' is already borrowed!");
    }
    isBorrowed = true;
    print("You borrowed '$title'");
  }

  void returnBook() {
    if (!isBorrowed) {
      print("The book '$title' was not borrowed.");
    } else {
      isBorrowed = false;
      print("You returned '$title'");
    }
  }

  void displayInfo() {
    print("$title by $author ($year) | Borrowed: ${isBorrowed ? "Yes" : "No"}");
  }
}

// Library class
class Library {
  List<Book> books = [];//starting off with an empty list

  void addBook(Book book) {
    books.add(book);
  }

  // Manual search by title in the lib
  List<Book> searchByTitle(String keyword) {
    List<Book> results = [];
    for (var book in books) {
      if (book.title.toLowerCase().contains(keyword.toLowerCase())) {//.toLower mmakes it case insensitive
        results.add(book);
      }
    }
    return results;
  }

  // Return only available books
  List<Book> listAvailableBooks() {
    List<Book> available = [];
    for (var book in books) {
      if (!book.isBorrowed) {
        available.add(book);
      }
    }
    return available;
  }
}

void main() {
  Library library = Library();//Added books
  library.addBook(Book("Mother", "M. Gorky", 1950));
  library.addBook(Book("Rich Dad Poor Dad", "Robert Kiyosaki", 1998));
  library.addBook(Book("Nine Perfect Strangers", "Liane Moriarty", 2018));
  library.addBook(Book("Chozi La Heri", "Asumpta K. Matei", 2014));
  library.addBook(Book("Blossoms of the Savannah", "H. R. Ole Kulet", 2018));
  library.addBook(Book("Kaizen", "Sarah Harvey", 2019));

  while (true) {
    print("\n===== Library Menu =====");
    print("1. List available books");
    print("2. Search book by title");
    print("3. Borrow a book");
    print("4. Return a book");
    print("5. Exit");
    stdout.write("Enter choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        var available = library.listAvailableBooks();
        if (available.isEmpty) {
          print("No books available.");
        } else {
          for (var b in available) {
            b.displayInfo();
          }
        }
        break;

      case '2':
        stdout.write("Enter keyword: ");
        String keyword = stdin.readLineSync()!;
        var results = library.searchByTitle(keyword);
        if (results.isEmpty) {
          print("No matching books found.");
        } else {
          for (var b in results) {
            b.displayInfo();
          }
        }
        break;

      case '3':
        stdout.write("Enter book title to borrow: ");
        String title = stdin.readLineSync()!;
        bool found = false;
        for (var b in library.books) {
          if (b.title.toLowerCase() == title.toLowerCase()) {
            try {
              b.borrowBook();
            } catch (e) {
              print(e);
            }
            found = true;
            break;
          }
        }
        if (!found) print("Book not found.");
        break;

      case '4':
        stdout.write("Enter book title to return: ");
        String title = stdin.readLineSync()!;
        bool found = false;
        for (var b in library.books) {
          if (b.title.toLowerCase() == title.toLowerCase()) {
            b.returnBook();
            found = true;
            break;
          }
        }
        if (!found) print("Book not found.");
        break;

      case '5':
        print("Goodbye!");
        return;

      default:
        print("Invalid option.");
    }
  }
}
