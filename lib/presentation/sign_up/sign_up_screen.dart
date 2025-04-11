import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/big_button.dart';
import 'package:recipe_flutter/core/presentation/components/input_field.dart';
import 'package:recipe_flutter/ui/text_styles.dart';
import 'package:recipe_flutter/ui/color_styles.dart';

class SignUpScreen extends StatefulWidget {
  final void Function() onTapRouteToSignIn;
  const SignUpScreen({
    super.key,
    required this.onTapRouteToSignIn,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create an account',
                style: TextStyles.largeTextBold,
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  'Let’s help you set up your account, it won’t take long.',
                  style: TextStyles.smallerTextRegular,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputField(label: 'Name', placeholder: 'Enter Name'),
              const SizedBox(
                height: 20,
              ),
              const InputField(label: 'Email', placeholder: 'Enter Email'),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                  label: 'Password', placeholder: 'Enter Password'),
              const SizedBox(
                height: 20,
              ),
              const InputField(
                  label: 'Confirm Password', placeholder: 'Retype Password'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: _isChecked,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      side: const BorderSide(
                          width: 1, color: ColorStyles.secondary100),
                      activeColor: ColorStyles.secondary100,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      }),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('Forget Password?',
                      style: TextStyles.smallerTextRegular
                          .copyWith(color: ColorStyles.secondary100)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              BigButton('Sign Up', onPressed: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerTextRegular
                        .copyWith(color: ColorStyles.gray3),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 6,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: 24,
                        height: 24,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyles.smallerTextBold
                        .copyWith(color: ColorStyles.black),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTapRouteToSignIn,
                    child: Text(
                      'Sign in',
                      style: TextStyles.smallerTextBold
                          .copyWith(color: ColorStyles.secondary100),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
