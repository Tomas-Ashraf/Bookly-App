import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 24),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.42,
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 43),
            Text(
              'The Jungle Book',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18.copyWith(
                  // color: Colors.white70,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const BookRating(),
            const SizedBox(height: 37),
            const BookAction(),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),
            const SimilarBooksListView(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
