import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class HomeUiCubit extends Cubit<HomeUiState> {
  HomeUiCubit() : super(HomeUiState());

  void selectedIndex(int index) {
    emit(HomeUiState(index: index));
    print(state.index);
  }
}

class HomeUiState {
  int? index = 0;
  HomeUiState({this.index});
}
