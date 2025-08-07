import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/book_model.dart';

part 'newes_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    try {
      final books = await homeRepo.fetchBestSellerBooks();
      books.fold(
            (failure) => emit(NewestBooksFailure(failure.message)),
            (books) => emit(NewestBooksSuccess(books)),
      );
    } catch (e) {
      emit(NewestBooksFailure(e.toString()));
    }
  }
}
