part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBookLoading extends SimilarBooksState {}

final class SimilarBookSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBookSuccess({required this.books});
}

final class SimilarBookFailure extends SimilarBooksState {
  final String errorMessege;

  const SimilarBookFailure({required this.errorMessege});
}
