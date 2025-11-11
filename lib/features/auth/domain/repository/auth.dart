import 'package:dartz/dartz.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';

abstract class AuthRepository {
  Future<Either> signUp(CreateUserReq userReq);
  Future<void> signIn();
}
