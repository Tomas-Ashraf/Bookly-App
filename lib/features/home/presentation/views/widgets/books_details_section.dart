import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.42,
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title ?? 'No Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors != null &&
                    bookModel.volumeInfo.authors!.isNotEmpty
                ? bookModel.volumeInfo.authors![0]
                : 'Unknown Author',
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
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(height: 37),
        BookAction(bookModel: bookModel),
      ],
    );
  }
}
