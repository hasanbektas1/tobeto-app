// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class InitialState extends AuthState {}

class NotAuthenticated extends AuthState {
  String? errorMessage;
  NotAuthenticated({
    this.errorMessage,
  });
}

class Authenticated extends AuthState {
  User? user;
  Authenticated({
    this.user,
  });
}

class GetUserState extends AuthState {
  final String usernameState;
  final String departmentState;
  GetUserState({
    required this.usernameState,
    required this.departmentState,
  });
}

class GetDepartmentState extends AuthState {
  final String videoDepartment;
  GetDepartmentState({
    required this.videoDepartment,
  });
}
