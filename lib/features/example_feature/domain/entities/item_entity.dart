import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable {
  final int id;
  final String name;
  final String description;

  const ItemEntity({
    required this.id,
    required this.name,
    required this.description,
  });

  @override
  List<Object?> get props => [id, name, description];
}
