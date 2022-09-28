import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/src/firebase_auth_exception.dart';
import 'package:firebase_auth_platform_interface/src/providers/phone_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/features/auth/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  late String verificationId;

  @override
  Future<void> submitPhoneNumber(String phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSentSms,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  @override
  Future<void> verificationCompleted(PhoneAuthCredential credential) async {
    if (kDebugMode) {
      print('verificationCompleted');
    }
    await signIn(credential);
  }

  @override
  void verificationFailed(FirebaseAuthException error) {
    if (error.code == 'invalid-phone-number') {
      if (kDebugMode) {
        print('The provided phone number is not valid.');
        verificationError = error.toString();
      }
    }
  }

  @override
  void codeSentSms(String verificationId, int? resendToken) {
    if (kDebugMode) {
      print('codeSent');
    }
    this.verificationId = verificationId;
  }

  @override
  void codeAutoRetrievalTimeout(String verificationId) async {
    if (kDebugMode) {
      print('codeAutoRetrievalTimeout');
    }
  }

  @override
  Future<void> submitOTP(String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCode);

    await signIn(credential);
  }

  @override
  User getLoggedInUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser!;
    return firebaseUser;
  }

  @override
  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> signIn(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      if (kDebugMode) {
        print('PhoneNumberSubmitted');
      }
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }

  @override
  void uploadUserProfile() {
    // TODO: implement uploadUserProfile
  }

  @override
  void createUserInformation() {
    // TODO: implement createUserInformation
  }

  @override
  late String verificationError;
}
