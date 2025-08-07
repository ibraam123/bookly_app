import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementaion.dart';
import 'package:meta/meta.dart';

import '../../home/data/models/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepoImpl) : super(SearchInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSearchBooks(String query) async {
    emit(SearchLoading());
    try {
      final books = await homeRepoImpl.fetchSearchBooks(query);
      books.fold(
            (failure) => emit(SearchFailure(failure.message)),
            (books) => emit(SearchSuccess(books)),
      );
    } catch (e) {
      emit(SearchFailure(e.toString()));
    }
  }
}
