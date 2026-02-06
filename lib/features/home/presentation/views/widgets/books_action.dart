import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: 'Free',
              textColor: Colors.black,
              onPressed: () {},
            ),
          ),

          Expanded(
            child: CustomButton(
              backgroundColor: const Color(0xFFEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: getText(bookModel),
              fontSize: 16,
              textColor: Colors.white,
              onPressed: () async {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return "Not Available";
  } else {
    return 'Preview';
  }
}
