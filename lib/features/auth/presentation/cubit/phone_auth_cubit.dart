import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/use_cases/get_auth_use_case.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  final GetAuthenticationUseCase getAuthenticationUseCase;

  PhoneAuthCubit({required this.getAuthenticationUseCase})
      : super(PhoneAuthInitial());

  Future<void> submitPhoneNumber(String phone) async {
    emit(Loading());
    await getAuthenticationUseCase.submitPhoneNumber(phone);
  }

  Future<void> submitOTP(String otpCode) async {
    try {
      await getAuthenticationUseCase.submitOTP(otpCode);
      emit(PhoneNumberSubmited());
    } catch (error) {
      emit(ErrorOccurred(errorMsg: error.toString()));
    }
  }

  Future<void> logOut() async {
    getAuthenticationUseCase.logOut();
    emit(LogOut());
  }

  User getLoggedInUser() {
    return getAuthenticationUseCase.getLoggedInUser();
  }
}
