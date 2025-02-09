import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/book_viewmodel.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Книги из Firebase")),
      body: Column(
        children: [
          Expanded(
            child: Consumer<BookViewModel>(
              builder: (context, viewModel, child) {
                if (viewModel.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (viewModel.books.isEmpty) {
                  return const Center(child: Text("Нет доступных книг"));
                }

                return ListView.builder(
                  itemCount: viewModel.books.length,
                  itemBuilder: (context, index) {
                    final book = viewModel.books[index];
                    return ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.author),
                    );
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<BookViewModel>(context, listen: false).addNextBook();
            },
            child: const Text("Добавить книгу"),
          ),
        ],
      ),
    );
  }
}
