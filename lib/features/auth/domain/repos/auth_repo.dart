import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<ServerFailures, UserEntity>> createUserWithEmailAndPassword(
      String name, String password, String email);

  Future<Either<ServerFailures, UserEntity>> signinWithEmailAndPassword(
      String password, String email);

  Future<Either<ServerFailures, UserEntity>> signinWithGoogle();
  Future<Either<ServerFailures, UserEntity>> signinWithFacebook();
}
