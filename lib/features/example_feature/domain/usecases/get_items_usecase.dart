import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/item_entity.dart';
import '../repositories/item_repository.dart';

class GetItemsUseCase extends UseCase<List<ItemEntity>, NoParams> {
  final ItemRepository repository;

  GetItemsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ItemEntity>>> call(NoParams params) async {
    return await repository.getItems();
  }
}
