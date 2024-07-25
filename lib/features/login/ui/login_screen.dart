import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/custom_text_form_field.dart';
import 'package:docdoc/features/login/widgets/already_have_account.dart';
import 'package:docdoc/features/login/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';

import '../../onboarding/widgets/get_started_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular,
              ),
              const SizedBox(
                height: 36,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          controller: emailController,
                          hintText: 'Email',
                          obscureText: false),
                      const SizedBox(
                        height: 18,
                      ),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: isObscureText,
                          suffixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isObscureText=!isObscureText;
                                });
                              },
                              child: Icon(isObscureText? Icons.visibility_off:Icons.visibility)),
                      ),
                      const SizedBox(height: 24,),
                       Align(
                          alignment:AlignmentDirectional.centerEnd,
                          child: Text('Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                          )),
                      const SizedBox(height: 40,),
                      CustomTextButton(text:  'Login', onPressed: (){
                      }),
                      const SizedBox(height: 16,),
                      const TermsConditions(),
                      const SizedBox(height: 60,),
                      const AlreadyHaveAccount()


                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
