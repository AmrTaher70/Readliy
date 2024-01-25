import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}