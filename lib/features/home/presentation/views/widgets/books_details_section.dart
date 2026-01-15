import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.42,
          child: const CustomBookImage(
            imageUrl:
                'https://cdn.shopaccino.com/igmguru/products/flutter-igmguru_1527424732_l.jpg?v=546',
          ),
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
      ],
    );
  }
}
