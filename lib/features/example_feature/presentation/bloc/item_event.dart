import 'package:equatable/equatable.dart';

abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object?> get props => [];
}

class ItemRequested extends ItemEvent {}
