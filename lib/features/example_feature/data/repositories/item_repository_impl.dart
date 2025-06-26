import 'package:dartz/dartz.dart';
import '../../../../core/network/exception/custom_exception.dart';
import '../../domain/entities/item_entity.dart';
import '../../domain/repositories/item_repository.dart';
import '../../../../core/error/failures.dart';
import '../datasources/item_remote_data_source.dart';

class ItemRepositoryImpl implements ItemRepository {
  final ItemRemoteDataSource remoteDataSource;

  ItemRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ItemEntity>>> getItems() async {
    try {
      final items = await remoteDataSource.getItems();
      return Right(items);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
