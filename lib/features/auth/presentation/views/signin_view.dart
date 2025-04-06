import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_functions/build_errors_bar.dart';
import 'package:fruit_hub/core/widgets/custom_Progress_hud.dart';
import 'package:fruit_hub/features/auth/presentation/cubites/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repos/auth_repo.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SigninCubit(getIt.get<AuthRepo>()),
        child: Scaffold(
          appBar: buildAppBar(context, title: 'تسجيل الدخول'),
          body: const SigninViewBodyConsumer(),
        ));
  }
}

class SigninViewBodyConsumer extends StatelessWidget {
  const SigninViewBodyConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(listener: (context, state) {
      if (state is SigninSuccess) {}
      if (state is SigninFailure) {
        buildErrorsBar(context, state.message);
      }
    }, builder: (context, state) {
      return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody());
    });
  }
}
