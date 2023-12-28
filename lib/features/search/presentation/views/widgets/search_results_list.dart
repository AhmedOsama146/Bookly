import 'package:flutter/material.dart';

import '../../../../../core/widgets/book_item.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BookItem(),
      ),
      itemCount: 20,
    );
  }
}