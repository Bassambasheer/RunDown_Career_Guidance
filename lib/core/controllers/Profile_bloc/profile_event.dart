part of 'profile_bloc.dart';

class ProfileEvent {}

class EditEvent extends ProfileEvent {
  bool isreadonly;
  EditEvent({required this.isreadonly});
}
