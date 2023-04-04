import 'package:communicare/theme/app_strings.dart';
import 'package:communicare/theme/app_Icons.dart';

class AppConstants {
  static const List<String> categoriesList = [
    AppStrings.emotions,
    AppStrings.family_and_work,
    AppStrings.concerns,
    AppStrings.condition,
    AppStrings.sleep_and_position,
    AppStrings.therapy,
    AppStrings.breathing,
    AppStrings.toilet_andd_washing
  ];

  static final List<String> sideBarItemsList = [
    AppStrings.home,
    AppStrings.recent,
    AppStrings.patient_log,
    AppStrings.settings,
    AppStrings.feedback
  ];

  static final List<String> sideMenuSelectedItemsList = [
    AppIcons.home_selected,
    AppIcons.recent_selected,
    AppIcons.patient_log_selected,
    AppIcons.settings_selected,
    AppIcons.feedback_selected
  ];

  static final List<String> sideMenuDeselectedItemsList = [
    AppIcons.home_deselected,
    AppIcons.recent_deselected,
    AppIcons.patient_log_deselected,
    AppIcons.settings_deselected,
    AppIcons.feedback_deselected
  ];

  static const categories_images_path = 'resources/assets/categories/';
}
