import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';

String? emailValidator(String? value) {
  final String emailNotValidMessage = 'email_not_valid'.tr();
  if (value == null || !EmailValidator.validate(value)) {
    return emailNotValidMessage;
  }
}
