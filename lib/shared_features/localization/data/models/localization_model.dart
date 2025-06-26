import 'package:flutter/material.dart';

class LocalizationModel {
  final Locale locale;
  final String name;
  final String? description;

  const LocalizationModel({
    required this.locale,
    required this.name,
    this.description,
  });

  factory LocalizationModel.fromJson(Map<String, dynamic> map) {
    return LocalizationModel(
      locale: Locale(map['languageCode'], map['countryCode']),
      name: map['name'] ?? '',
      description: map['description'],
    );
  }

  Map<String, dynamic> toJson() => {
        'languageCode': locale.languageCode,
        'countryCode': locale.countryCode,
        'name': name,
        'description': description,
      };
} 