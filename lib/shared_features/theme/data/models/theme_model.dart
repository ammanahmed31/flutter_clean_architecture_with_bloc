import 'package:flutter/material.dart';

class ThemeModel {
  final String name;
  final String? description;
  final ThemeMode themeMode;

  const ThemeModel({
    required this.name,
    this.description,
    required this.themeMode,
  });

  factory ThemeModel.fromJson(Map<String, dynamic> map) {
    return ThemeModel(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      themeMode: map['themeMode'] ?? ThemeMode.light,
    );
  }
}
