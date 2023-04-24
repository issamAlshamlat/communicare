part of 'side_bar_bloc.dart';

@immutable
abstract class SideBarEvent {}

class SideBarIndexChanged extends SideBarEvent {
  final int index;

  SideBarIndexChanged(this.index);

  
}
