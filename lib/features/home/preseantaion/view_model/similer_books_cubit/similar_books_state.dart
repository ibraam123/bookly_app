part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {
  const SimilarBooksState();
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);

}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailure(this.errMessage);
}

