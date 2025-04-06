import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/constants.dart';
import 'package:fruit_hub/core/widgets/custom_buttons.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/core/widgets/or_divider.dart';
import 'package:fruit_hub/core/widgets/password_field.dart';
import 'package:fruit_hub/features/auth/presentation/cubites/signin_cubit/signin_cubit.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/dont_have_an_acount.dart';
import '../../../../gen/assets.gen.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('نسيت كلمة المرور؟',
                      style: TextStyles.semiBold13
                          .copyWith(color: AppColors.lightPrimaryColor)),
                ],
              ),
              const SizedBox(height: 33),
              CustomGeneralButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().SigninUser(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }),
              const SizedBox(height: 33),
              const DontHaveAnAcount(),
              const SizedBox(height: 33),
              const OrDiveder(),
              const SizedBox(height: 16),
              SocialLoginButton(
                  image: Assets.images.googleIcon,
                  title: 'تسجيل بواسطة جوجل',
                  onPressed: () {
                    context.read<SigninCubit>().signinWithGoogle();
                  }),
              const SizedBox(height: 16),
              SocialLoginButton(
                  image: Assets.images.appEIcon,
                  title: 'تسجيل بواسطة أبل',
                  onPressed: () {}),
              const SizedBox(height: 16),
              SocialLoginButton(
                  image: Assets.images.facebookIcon,
                  title: 'تسجيل بواسطة فيسبوك',
                  onPressed: () {
                    context.read<SigninCubit>().signinWithFacebook();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
