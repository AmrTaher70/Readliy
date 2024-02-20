import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/error/failures.dart';
import 'package:bookly/core/utils/api/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&pXDzdJ_1E3oC=newest&q=subject:Science',
      );
      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(
          e.response?.data['message'] ?? 'Failed to fetch data from the API'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Science',
      );
      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(
          e.response?.data['message'] ?? 'Failed to fetch data from the API'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Science',
      );
      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure(
          e.response?.data['message'] ?? 'Failed to fetch data from the API'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
