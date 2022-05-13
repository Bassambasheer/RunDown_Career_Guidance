import 'package:bloc/bloc.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState(readonly: true)) {
    on<EditEvent>((event, emit) {
      emit(ProfileState(readonly: event.isreadonly));
    });
  }
}
