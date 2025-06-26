import 'package:flutter_bloc/flutter_bloc.dart';
import 'item_event.dart';
import 'item_state.dart';
import '../../domain/usecases/get_items_usecase.dart';
import '../../../../core/usecases/usecase.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final GetItemsUseCase getItemsUseCase;

  ItemBloc({required this.getItemsUseCase}) : super(ItemInitial()) {
    on<ItemRequested>(_onItemRequested);
  }

  Future<void> _onItemRequested(ItemRequested event, Emitter<ItemState> emit) async {
    emit(ItemLoading());
    final result = await getItemsUseCase(NoParams());
    result.fold((failure) => emit(ItemError(failure.message ?? 'Unexpected error')), (items) => emit(ItemLoaded(items)));
  }
}
