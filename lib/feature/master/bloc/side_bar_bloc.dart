import 'package:bloc/bloc.dart';
import 'package:communicare/feature/home/models/category_model.dart';
import 'package:meta/meta.dart';

part 'side_bar_event.dart';
part 'side_bar_state.dart';

class SideBarBloc extends Bloc<SideBarEvent, SideBarState> {
  SideBarBloc() : super(SideBarInitial()) {
    on<SideBarEvent>((event, emit) {
      if (event is SideBarIndexChanged) {
        switch (event.index) {
          case 0:
            final List<CategoryModel> categoriesList = [];
            return HomeState(categoriesList);
          default:
            print(event.index);
        }
      }
    });
  }
}
