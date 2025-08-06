import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_entity.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        url: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
      );
      List<BookEntity> books = [];
      for (var item in data['items']) {
        books.add(BookEntity.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        url: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookEntity> books = [];
      for (var item in data['items']) {
        books.add(BookEntity.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
