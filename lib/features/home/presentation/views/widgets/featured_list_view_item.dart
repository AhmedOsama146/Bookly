import 'dart:ui';

import 'package:bookly/core/utlis/app_router.dart';
import 'package:bookly/core/widgets/book_image.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utlis/size_config.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem(this.book,{super.key});
  final BookModel book;
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetails, extra: book);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BookImage(
            imageUrl: book.volumeInfo!.imageLinks?.thumbnail! ?? '',
            aspectRatio: 150 / 224,
            height: SizeConfig.heightBlock * 25,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 45,
                height: 45,
                child: ClipOval(
                  child: Container(
                    color: Colors.black.withOpacity(0.25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
                      child: const Icon(Icons.play_arrow),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
