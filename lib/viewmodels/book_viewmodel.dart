import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/book.dart';

class BookViewModel extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<Book> _books = [];
  List<Book> _allBooks = [];
  bool _isLoading = true;

  List<Book> get books => _books;
  bool get isLoading => _isLoading;

  BookViewModel() {
    _fetchBooksFromFirestore();
  }

  Future<void> _fetchBooksFromFirestore() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('books').get();
      _allBooks = snapshot.docs
          .map((doc) => Book.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      if (_allBooks.isNotEmpty) {
        _books.add(_allBooks.removeAt(0));
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void addNextBook() {
    if (_allBooks.isNotEmpty) {
      _books.add(_allBooks.removeAt(0));
      notifyListeners();
    }
  }
}
