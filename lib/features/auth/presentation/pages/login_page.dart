import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/auth/presentation/pages/register_page.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:scanner/features/dashboard/presentation/pages/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is GotProfile) {
          const DashboardPage().launch(context, isNewTask: true);
        }
      },
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoadingState) {
            EasyLoading.show(status: 'Logging in...');
          }

          if (state is GotLogin) {
            EasyLoading.dismiss();
          }

          if (state is ErrorState) {
            EasyLoading.dismiss();

            snackBar(
              context,
              title: state.error.message,
              backgroundColor: Colors.red,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              padding: Sizing.basePadding,
              child: IgnorePointer(
                ignoring: state is LoadingState,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset('assets/img/logo.png'),
                      ),
                      Text(
                        'Contact Tracing App',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: ScreenUtil.getInstance().getSp(23),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.getInstance().getHeight(45),
                      ),

                      // Phone Number
                      AppTextField(
                        controller: _email,
                        textFieldType: TextFieldType.EMAIL,
                        isValidationRequired: true,
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 16),

                      AppTextField(
                        textFieldType: TextFieldType.PASSWORD,
                        controller: _password,
                        isPassword: true,
                        isValidationRequired: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                      ),

                      const SizedBox(height: 24),

                      AppButton(
                        enableScaleAnimation: false,
                        onTap: _onLogin,
                        text: 'Login',
                        width: double.infinity,
                        color: Branding.primaryColor,
                        textColor: Colors.white,
                        shapeBorder: const RoundedRectangleBorder(
                          borderRadius: Sizing.inputBorder,
                        ),
                      ),

                      SizedBox(
                        height: ScreenUtil.getInstance().getHeight(10),
                      ),
                      GestureDetector(
                        onTap: () => const RegisterPage().launch(context),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _onLogin() {
    if (_formKey.currentState!.validate()) {
      final req = LoginParamsModel(
        email: _email.text,
        password: _password.text,
        deviceId: 'device_id',
      );

      BlocProvider.of<AuthBloc>(context).add(OnLogin(req));
    }
  }
}
