import 'package:communicare/feature/home/models/category_model.dart';
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

  static List<CategoryModel> getCategoriesModelsLists() {
    List<CategoryModel> categoriesModelsList = [];

    for (String title in categoriesList) {
      CategoryModel categoryModel = CategoryModel(title: title);
      categoriesModelsList.add(categoryModel);
    }

    return categoriesModelsList;
  }

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

  static final List<String> emotionsSubcategoriesList = [
    AppStrings.i_want_to_hug_you,
    AppStrings.you_are_dear_to_me,
    AppStrings.i_love_you,
    AppStrings.i_am_surprised,
    AppStrings.i_dont_want_to_see_anyone,
    AppStrings.i_am_happy,
    AppStrings.i_am_sad,
    AppStrings.i_am_angry,
    AppStrings.i_am_afraid,
    AppStrings.i_am_confused,
  ];

  static final List<String> familyAndWorkSubcategoriesList = [
    AppStrings.i_want_to_go_home,
    AppStrings.my_pets_are_alone_at_home,
    AppStrings.i_want_to_call_for_my_work,
    AppStrings.i_want_to_call_home,
    AppStrings.does_my_family_know,
    AppStrings.when_can_i_go_home,
    AppStrings.i_want_to_see_my_family,
    AppStrings.call_my_family_here,
    AppStrings.has_someone_called,
  ];

  static final List<String> concernsSubcategoriesList = [
    AppStrings.i_dont_want_to_die_in_pain,
    AppStrings.i_am_afraid_to_die,
    AppStrings.will_i_die,
    AppStrings.what_happens_with_my_pets,
    AppStrings.i_dont_want_to_be_alone,
    AppStrings.untie_my_arms,
    AppStrings.i_dont_want_to_be_here,
    AppStrings.how_long_have_i_been_here,
    AppStrings.where_am_i,
    AppStrings.what_happened,
  ];

  static final List<String> conditionSubcategoriesList = [
    AppStrings.i_dont_feel_my_arms,
    AppStrings.i_dont_feel_my_legs,
    AppStrings.i_feel_dizzy,
    AppStrings.i_am_very_weak,
    AppStrings.i_am_cold,
    AppStrings.i_am_hot,
    AppStrings.i_am_nauseous,
    AppStrings.i_feel_very_bad
  ];

  static final List<String> sleepAndPositionSubcategoriesList = [
    AppStrings.please_give_me_sleeping_pills,
    AppStrings.at_home_i_take_sleeping_pills,
    AppStrings.please_put_the_light_on,
    AppStrings.i_have_something_under_my_body_that_annoys_me,
    AppStrings.what_is_bubbling_here,
    AppStrings.please_turn_the_light_off,
    AppStrings.pain_disturbs_the_sleep,
    AppStrings.i_can_not_sleep,
    AppStrings.i_want_to_sleep,
    AppStrings.please_be_quiet,
    AppStrings.i_want_to_go_to_bed,
    AppStrings.i_want_to_walk,
    AppStrings.i_want_to_sit_on_the_chair,
    AppStrings.my_position_is_uncomfortable,
    AppStrings.i_want_to_do_exercise,
    AppStrings.i_want_to_get_up,
    AppStrings.turn_on_the_side,
    AppStrings.my_back_is_tired,
    AppStrings.raise_the_head,
    AppStrings.lower_the_bed_head,
  ];

  static final List<String> therapySubcategoriesList = [
    AppStrings.what_is_the_treatment_plan,
    AppStrings.how_am_i_doing,
    AppStrings.i_want_physiotherapy,
    AppStrings.what_examination_is_this,
    AppStrings.what_kind_of_procedure_is_it,
    AppStrings.how_did_the_operation_go,
    AppStrings.how_can_i_call_a_doctor_or_a_nurse,
    AppStrings.what_is_the_day_plan,
    AppStrings.is_the_operation_done,
    AppStrings.when_does_the_surgeon_come,
  ];

  static final List<String> breathingSubcategoriesList = [
    AppStrings.when_can_i_speak,
    AppStrings.when_will_the_tube_be_taken_away,
    AppStrings.take_the_tube_away,
    AppStrings.will_i_ever_speak_again,
    AppStrings.clear_the_breathing_tube,
    AppStrings.let_the_machine_help_me_to_breathe,
    AppStrings.i_dont_have_strength_to_breathe,
    AppStrings.there_is_not_enough_air,
    AppStrings.i_cant_breathe,
  ];

  static final List<String> toiletAndWashingSubcategoriesList = [
    AppStrings.i_want_to_go_to_the_potty_chair,
    AppStrings.i_want_a_bedpan,
    AppStrings.i_dont_want_a_bedpan,
    AppStrings.when_can_i_go_pee_on_my_own,
    AppStrings.take_the_catheter_way,
    AppStrings.is_pee_coming,
    AppStrings.i_want_to_poop,
    AppStrings.catheter_is_irritating,
    AppStrings.i_want_to_go_to_the_toilet,
    AppStrings.i_want_to_pee,
    AppStrings.please_brush_my_hair,
    AppStrings.where_are_my_things,
    AppStrings.wash_my_face,
    AppStrings.i_want_to_brush_my_teeth,
    AppStrings.please_wash_me,
    AppStrings.do_not_wash_me,
    AppStrings.i_want_my_clothes_on,
    AppStrings.i_have_saliva_in_my_mouth_please_remove_it,
    AppStrings.why_am_i_naked,
    AppStrings.i_want_a_mouthwash,
  ];

  static final List<String> painSubcategoriesList = [
    AppStrings.stings,
    AppStrings.chest_pain,
    AppStrings.prickling_like_ants_running,
    AppStrings.it_is_painful_to_breathe,
    AppStrings.gaspain,
    AppStrings.it_is_painful_to_cough,
    AppStrings.sharp_pain,
    AppStrings.numb_pain,
    AppStrings.burning_pain,
    AppStrings.tingle
  ];

  static List<List<String>> subcategoriesList = [
    emotionsSubcategoriesList,
    familyAndWorkSubcategoriesList,
    concernsSubcategoriesList,
    conditionSubcategoriesList,
    sleepAndPositionSubcategoriesList,
    therapySubcategoriesList,
    breathingSubcategoriesList,
    toiletAndWashingSubcategoriesList
  ];

  // static List<CategoryModel> getSubCategoryModelList(List<String> list) {
  //   List<CategoryModel> subcategoriesModelList = [];

  //   for (String title in list) {
  //     CategoryModel categoryModel = CategoryModel(title: title);
  //     subcategoriesModelList.add(categoryModel);
  //   }

  //   return subcategoriesModelList;
  // }

  // static List<List<CategoryModel>> getSubCategoriesModelsLists() {
  //   List<List<String>> subcategoriesModelsList = [];
  //   List<String> subcategoryModelList = [];

  //   for (List<String> subcategoryList in subcategoriesList) {
  //     for (String title in subcategoryList) {
  //       CategoryModel categoryModel = CategoryModel(title: title);
  //       subcategoryModelList.add(categoryModel);
  //     }
  //     subcategoryModelList.clear();
  //     subcategoriesModelsList.add(subcategoryModelList);
  //   }

  //   return subcategoriesModelsList;
  // }
}
