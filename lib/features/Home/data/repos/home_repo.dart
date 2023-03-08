import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/data/model/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
