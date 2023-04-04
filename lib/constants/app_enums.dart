import 'package:communicare/theme/app_strings.dart';

enum Gender {
  Man,
  Woman,
}

String getGenderString(Gender gender) {
  switch (gender) {
    case Gender.Man:
      return AppStrings.man;
    case Gender.Woman:
      return AppStrings.woman;
  }
}
