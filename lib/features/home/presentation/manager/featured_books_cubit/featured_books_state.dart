import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksStates {}

final class FeaturedBooksLoading extends FeaturedBooksStates {}

final class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;
  const FeaturedBooksSuccess({required this.books});
}

final class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errorMessage;

  const FeaturedBooksFailure({required this.errorMessage});
}
