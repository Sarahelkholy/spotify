import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';

abstract class AuthFirebaserService {
  Future<Either> signUp(CreateUserReq userReq);
}

class AuthFirebaserServiceImpl extends AuthFirebaserService {
  @override
  Future<Either> signUp(CreateUserReq userReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userReq.email,
        password: userReq.password,
      );
      return const Right('Sign up successfully');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email';
      }
      return left(message);
    }
  }
}
