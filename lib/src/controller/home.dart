import 'package:flutter_repo_demo/src/db/virtual_db.dart';
import 'package:flutter_repo_demo/src/models/books.dart';
import 'package:flutter_repo_demo/src/repositories/book.dart';

class HomeController {
  BookRepository _bookRepo = BookRepository(VirtualDB());

  Future<List<Book>> getAllBooks() {
    return _bookRepo.getAll();
  }

  Future<void> addBook(Book book) {
    return _bookRepo.insert(book);
  }

  Future<void> removeBook(int id) {
    return _bookRepo.delete(id);
  }
}