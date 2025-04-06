import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

import '../models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<ServerFailures, UserEntity>> createUserWithEmailAndPassword(
      String name, String password, String email) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFireBaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailures(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword:${e.toString()}');
      return left(
        ServerFailures('لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<ServerFailures, UserEntity>> signinWithEmailAndPassword(
      String password, String email) async {
    try {
      var user = await firebaseAuthService.signinWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFireBaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailures(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword:${e.toString()}');
    }
    return left(ServerFailures('لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى'));
  }

  @override
  Future<Either<ServerFailures, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(
        UserModel.fromFireBaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.creatUserWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailures('لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى'));
    }
  }

  @override
  Future<Either<ServerFailures, UserEntity>> signinWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(
        UserModel.fromFireBaseUser(user),
      );
    } on CustomException catch (e) {
      log('Exception in AuthRepoImpl.creatUserWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailures('لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى'));
    }
  }
}
