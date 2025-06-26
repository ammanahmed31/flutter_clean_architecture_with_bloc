import '../../constants/app_strings.dart';

mixin Validator {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.emailIsRequired;
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return AppStrings.pleaseEnterAValidEmail;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.passwordIsRequired;
    } else if (value.length < 6) {
      return AppStrings.passwordMustBeAtLeastXCharacters;
    }
    return null;
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.nameIsRequired;
    } else if (value.length < 3) {
      return AppStrings.nameMustBeAtLeastXCharacters;
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.phoneIsRequired;
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return AppStrings.pleaseEnterAValidPhoneNumber;
    }
    return null;
  }
}
