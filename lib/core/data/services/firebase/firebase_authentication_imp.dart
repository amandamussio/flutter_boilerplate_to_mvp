

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_boilerplate_to_mvp/core/domain/services/authentication_services.dart';

class FirebaseAuthenticationImp implements AuthenticationService {
  @override
  Future<void> initializeService() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
}