import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: const CustomBookImage(),
          ),
        ),
      ),
    );
  }
}
