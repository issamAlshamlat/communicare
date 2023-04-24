part of 'side_bar_bloc.dart';

@immutable
abstract class SideBarState {}

class SideBarInitial extends SideBarState {}

class HomeState extends SideBarInitial {
  final List<CategoryModel> categoriesList;

  HomeState(this.categoriesList);
}

class RecentState extends SideBarInitial {
}

class PatientLogState extends SideBarInitial {}

class SettingsState extends SideBarInitial {}
