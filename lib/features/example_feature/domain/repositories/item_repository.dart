import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/item_entity.dart';

abstract class ItemRepository {
  Future<Either<Failure, List<ItemEntity>>> getItems();
}
