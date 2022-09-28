import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRepository {
  String verificationError = 'error';
  Future<void> submitPhoneNumber(String phone);
  void verificationCompleted(PhoneAuthCredential credential);
  void verificationFailed(FirebaseAuthException error);
  void codeSentSms(String verificationId, int? resendToken);
  void codeAutoRetrievalTimeout(String verificationId);
  Future<void> submitOTP(String otpCode);
  Future<void> signIn(PhoneAuthCredential credential);
  Future<void> logOut();
  User getLoggedInUser();
  void uploadUserProfile();
  void createUserInformation();
}
