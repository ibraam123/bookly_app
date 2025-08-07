import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    try {
      final books = await homeRepo.fetchSimilarBooks(category: category);
      books.fold(
            (failure) => emit(SimilarBooksFailure(failure.message)),
            (books) => emit(SimilarBooksSuccess(books)),
      );
    } catch (e) {
      emit(SimilarBooksFailure(e.toString()));
    }
  }
}
