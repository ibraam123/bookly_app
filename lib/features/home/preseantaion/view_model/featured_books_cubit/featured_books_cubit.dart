import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementaion.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      final books = await homeRepoImpl.fetchFeaturedBooks();
      books.fold(
        (failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)),
      );
    } catch (e) {
      emit(FeaturedBooksFailure(e.toString()));
    }
  }
}
