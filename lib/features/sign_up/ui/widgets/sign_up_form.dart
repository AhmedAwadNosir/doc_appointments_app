import 'package:doc_appointments_app/core/helpers/app_regax.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/widgets/app_text_button.dart';
import 'package:doc_appointments_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/passwrod_validations.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool obscureText = true;
  late TextEditingController passwordTextEditingControler;
  late TextEditingController passwordConformationTextEditingControler;
  bool hasUperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  bool isEmailVald = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    passwordTextEditingControler = context
        .read<SignUpCubit>()
        .passwordTextEditingControler;
    passwordConformationTextEditingControler = context
        .read<SignUpCubit>()
        .confarmationPasswordTextEditingControler;
    setupPasswordListner();

    super.initState();
  }

  @override
  void dispose() {
    passwordTextEditingControler.dispose();
    super.dispose();
  }

  void setupPasswordListner() {
    passwordTextEditingControler.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordTextEditingControler.text);
        hasUperCase = AppRegex.hasUpperCase(passwordTextEditingControler.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordTextEditingControler.text,
        );
        hasNumber = AppRegex.hasNumber(passwordTextEditingControler.text);
        hasMinLength = AppRegex.hasMinLength(passwordTextEditingControler.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Name",
            textEditingController: context
                .read<SignUpCubit>()
                .nameTextEditingControler,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please eneter valied Name";
              }
            },
          ),
          verticalSpacing(height: 16),
          AppTextFormField(
            hintText: "Phone number",
            textEditingController: context
                .read<SignUpCubit>()
                .phoneTextEditingControler,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(
                    context.read<SignUpCubit>().phoneTextEditingControler.text,
                  )) {
                return "please eneter valied Phone Number";
              }
            },
          ),
          verticalSpacing(height: 16),
          AppTextFormField(
            hintText: "Email",
            textEditingController: context
                .read<SignUpCubit>()
                .emailTextEditingControler,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(
                    context.read<SignUpCubit>().emailTextEditingControler.text,
                  )) {
                return "please eneter valied email";
              }
            },
          ),
          verticalSpacing(height: 16),
          AppTextFormField(
            hintText: "Password",
            textEditingController: passwordTextEditingControler,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !hasLowerCase ||
                  !hasUperCase ||
                  !hasSpecialCharacter ||
                  !hasNumber ||
                  !hasMinLength) {
                return "please eneter valied Password";
              }
            },
            obscureText: obscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpacing(height: 16),
          AppTextFormField(
            hintText: "Password Confarmation",
            textEditingController: passwordConformationTextEditingControler,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  passwordConformationTextEditingControler.text !=
                      passwordTextEditingControler.text) {
                return "Passwords do not match";
              }
            },
            obscureText: obscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpacing(height: 24),
          PasswrodValidations(
            hasUperCase: hasUperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),

          verticalSpacing(height: 40),
          AppTextButton(
            buttonText: "Sign Up",
            onpress: () {
              validateThenSignUp(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}
