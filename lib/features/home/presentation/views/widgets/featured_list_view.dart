import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
