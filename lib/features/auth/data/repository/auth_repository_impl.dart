import 'package:dartz/dartz.dart';
import 'package:spotify/core/di/dependency_injection.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';
import 'package:spotify/features/auth/data/service/auth_firebaser_service.dart';
import 'package:spotify/features/auth/domain/repository/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUserReq userReq) async {
    return await getIt<AuthFirebaserService>().signUp(userReq);
  }
}
