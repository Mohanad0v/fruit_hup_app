import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_functions/build_errors_bar.dart';
import 'package:fruit_hub/core/widgets/constants.dart';
import 'package:fruit_hub/core/widgets/custom_buttons.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/core/widgets/terms_and_conditions.dart';
import 'package:fruit_hub/features/auth/presentation/cubites/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/password_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
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
                    userName = value!;
                  },
                  hintText: 'الاسم بالكامل',
                  textInputType: TextInputType.name),
              const SizedBox(height: 16),
              CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomGeneralButton(
                  text: 'إنشاء حساب جديد',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      if (isTermsAccepted) {
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                                email, password, userName);
                      } else {
                        buildErrorsBar(
                            context, "يجب عليك الموافقة على الشروط والأحكام");
                      }
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  }),
              const SizedBox(
                height: 26,
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'تمتلك حساب بالفعل؟',
                    style: TextStyles.semiBold16
                        .copyWith(color: const Color(0xff949D9E)),
                  ),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                      text: 'تسجيل الدخول',
                      style: TextStyles.semiBold13
                          .copyWith(color: AppColors.primaryColor)),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
