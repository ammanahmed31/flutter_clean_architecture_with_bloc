import 'package:equatable/equatable.dart';
import '../../domain/entities/item_entity.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object?> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemLoaded extends ItemState {
  final List<ItemEntity> items;
  const ItemLoaded(this.items);

  @override
  List<Object?> get props => [items];
}

class ItemError extends ItemState {
  final String message;
  const ItemError(this.message);

  @override
  List<Object?> get props => [message];
}
