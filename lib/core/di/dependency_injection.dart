import 'package:get_it/get_it.dart';
import 'package:spotify/features/auth/data/repository/auth_repository_impl.dart';
import 'package:spotify/features/auth/data/service/auth_firebaser_service.dart';
import 'package:spotify/features/auth/domain/repository/auth.dart';
import 'package:spotify/features/auth/domain/usecases/signup.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<AuthFirebaserService>(AuthFirebaserServiceImpl());

  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  getIt.registerSingleton<SignupUseCase>(SignupUseCase());
}
