import 'package:dartz/dartz.dart';
import 'package:store/features/home/data/model/book_model.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<BookModel>>>fetchBestSeller();
  Future<Either<Failure,List<BookModel>>>fetchFeatureBooks();
}