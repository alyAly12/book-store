import 'package:dartz/dartz.dart';
import 'package:store/core/errors/failure.dart';
import 'package:store/features/home/data/model/book_model.dart';
import 'package:store/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSeller() {
    // TODO: implement fetchBestSeller
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}