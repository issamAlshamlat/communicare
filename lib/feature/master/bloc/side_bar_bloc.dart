import 'package:bloc/bloc.dart';
import 'package:communicare/constants/app_constants.dart';
import 'package:communicare/feature/home/models/category_model.dart';
import 'package:meta/meta.dart';

part 'side_bar_event.dart';
part 'side_bar_state.dart';

class SideBarBloc extends Bloc<SideBarEvent, SideBarState> {
  SideBarBloc() : super(SideBarInitial()) {
    on<SideBarEvent>((event, emit) async* {
      if (event is SideBarIndexChanged) {
        switch (event.index) {
          case 0:
            final List<CategoryModel> categoriesList = [];
            yield HomeState(categoriesList);
            break;
          case 1:
            final List<CategoryModel> categoriesList = [];
            yield HomeState(categoriesList);
            break;
          default:
            print('From Bloc ${event.index}');
        }
      }
    });
  }

  @override
  Stream<SideBarInitial> mapEventToState(int index) async* {
    switch (index) {
      case 1:
        final List<CategoryModel> categoriesList =
            AppConstants.getCategoriesModelsLists();
        yield HomeState(categoriesList);
        break;
      default:
        print('From Stream ${index}');
        yield SideBarInitial();
    }
  }
}
