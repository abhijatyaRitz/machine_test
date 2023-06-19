import 'package:bloc/bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState(count: 0));

  void increment() {
    emit(ProfileState(count: state.count + 1));
    print(state.count);
  }

  void decrement() {
    emit(ProfileState(count: state.count - 1));
    print(state.count);
  }
}

class ProfileState {
  int count;
  ProfileState({required this.count});
}
