part of 'phone_auth_cubit.dart';

abstract class PhoneAuthState extends Equatable {
  const PhoneAuthState();
}

class PhoneAuthInitial extends PhoneAuthState {
  @override
  List<Object> get props => [];
}

class Loading extends PhoneAuthState {
  @override
  List<Object?> get props => [];
}

class ErrorOccurred extends PhoneAuthState {
  final String errorMsg;

  const ErrorOccurred({required this.errorMsg});

  @override
  // TODO: implement props
  List<Object?> get props => [errorMsg];
}

class PhoneNumberSubmited extends PhoneAuthState {
  @override
  List<Object?> get props => [];
}

class PhoneOTPVerified extends PhoneAuthState {
  @override
  List<Object?> get props => [];
}

class LogOut extends PhoneAuthState {
  @override
  List<Object?> get props => [];
}
