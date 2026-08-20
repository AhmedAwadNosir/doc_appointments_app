import 'package:doc_appointments_app/core/helpers/app_regax.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/core/widgets/app_text_button.dart';
import 'package:doc_appointments_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/passwrod_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasswordForm extends StatefulWidget {
  const EmailAndPasswordForm({super.key});

  @override
  State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
}

class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
  bool obscureText = true;
  late TextEditingController passwordTextEditingControler;
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
        .read<LoginCubit>()
        .passwordTextEditingControler;
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
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            textEditingController: context
                .read<LoginCubit>()
                .emailTextEditingControler,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(
                    context.read<LoginCubit>().emailTextEditingControler.text,
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
          verticalSpacing(height: 24),
          PasswrodValidations(
            hasUperCase: hasUperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),
          verticalSpacing(height: 24),
          Align(
            alignment: AlignmentGeometry.centerEnd,
            child: Text(
              "Forgot Password?",
              style: FontStyls.font12MainblueRegular(),
            ),
          ),
          verticalSpacing(height: 40),
          AppTextButton(
            buttonText: "Login",
            onpress: () {
              validateThenDoLogin(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}
