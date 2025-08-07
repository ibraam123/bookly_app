// just make it abstract function

import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import '../models/book_model.dart';
// This abstract class defines the contract for home-related data operations.
// It outlines the methods that any concrete implementation of HomeRepo must provide.
abstract class HomeRepo {
  // Fetches a list of best-selling books.
  // Returns a Future that resolves to a List of BookEntity objects.
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  // Fetches a list of featured books.
  // Returns a Future that resolves to a List of BookEntity objects.
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});



}
