import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/auth_repository.dart';

class GetAuthenticationUseCase {
  final AuthenticationRepository authenticationRepository;

  GetAuthenticationUseCase({required this.authenticationRepository});

  late String verificationError = authenticationRepository.verificationError;

  Future<void> submitPhoneNumber(String phone) =>
      authenticationRepository.submitPhoneNumber(phone);
  void verificationCompleted(PhoneAuthCredential credential) =>
      authenticationRepository.verificationCompleted(credential);
  void verificationFailed(FirebaseAuthException error) =>
      authenticationRepository.verificationFailed(error);
  void codeSent(String verificationId, int? resendToken) =>
      authenticationRepository.codeSentSms(verificationId, resendToken);
  void codeAutoRetrievalTimeout(String verificationId) =>
      authenticationRepository.codeAutoRetrievalTimeout(verificationId);
  Future<void> submitOTP(String otpCode) =>
      authenticationRepository.submitOTP(otpCode);
  Future<void> signIn(PhoneAuthCredential credential) =>
      authenticationRepository.signIn(credential);
  Future<void> logOut() => authenticationRepository.logOut();
  User getLoggedInUser() => authenticationRepository.getLoggedInUser();

  void uploadUserImage() => authenticationRepository.uploadUserProfile();
  void createUserData() => authenticationRepository.createUserInformation();
}
