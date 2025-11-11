import 'package:dartz/dartz.dart';
import 'package:spotify/core/di/dependency_injection.dart';
import 'package:spotify/core/usecases/usecase.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';
import 'package:spotify/features/auth/data/service/auth_firebaser_service.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call(CreateUserReq params) async {
    return await getIt<AuthFirebaserService>().signUp(params);
  }
}
