import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/item_entity.dart';

part 'item_model.g.dart';

@JsonSerializable()
class ItemModel extends ItemEntity {
  const ItemModel({
    required super.id,
    required super.name,
    required super.description,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}
