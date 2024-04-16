import 'package:flustars/flustars.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/features/auth/data/models/register_params_model.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/dashboard/presentation/pages/dashboard_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _address = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool checkBoxValue = false;

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _address.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoadingState) {
          EasyLoading.show(status: 'Registering account...');
        }

        if (state is GotRegister) {
          EasyLoading.dismiss();
          const DashboardPage().launch(context, isNewTask: true);
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
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: Sizing.basePadding,
            child: IgnorePointer(
              ignoring: state is LoadingState,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil.getInstance().getSp(25),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(12),
                      ),
                    ),
                    const SizedBox(height: 35),

                    // First Name
                    AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: _firstName,
                      isValidationRequired: true,
                      decoration:
                          const InputDecoration(labelText: 'First Name'),
                    ),

                    const SizedBox(height: 16),

                    // Last Name
                    AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: _lastName,
                      isValidationRequired: true,
                      decoration: const InputDecoration(labelText: 'Last Name'),
                    ),

                    const SizedBox(height: 16),

                    //Address
                    AppTextField(
                      textFieldType: TextFieldType.MULTILINE,
                      controller: _address,
                      isValidationRequired: true,
                      decoration: const InputDecoration(labelText: 'Address'),
                    ),

                    const SizedBox(height: 16),

                    //Email Address
                    AppTextField(
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: _email,
                      isValidationRequired: true,
                      decoration:
                          const InputDecoration(labelText: 'Email Address'),
                    ),

                    const SizedBox(height: 16),

                    //Password
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      controller: _password,
                      isValidationRequired: true,
                      isPassword: true,
                      decoration: const InputDecoration(labelText: 'Password'),
                    ),

                    const SizedBox(height: 16),

                    //Confirm Password
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      controller: _confirmPassword,
                      isValidationRequired: true,
                      isPassword: true,
                      validator: (value) {
                        if (value != _password.text) {
                          return 'Password mismatch';
                        }

                        if (value.isEmptyOrNull) {
                          return 'This field is required';
                        }

                        return null;
                      },
                      decoration:
                          const InputDecoration(labelText: 'Confirm Password'),
                    ),

                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (value) => {
                            setState(() {
                              checkBoxValue = !checkBoxValue;
                            })
                          },
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(
                                color: Branding.textColor,
                                fontSize: ScreenUtil.getInstance().getSp(11),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    },
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                                TextSpan(
                                  text: ' of this app',
                                  style: TextStyle(
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    //Register Button
                    AppButton(
                      enabled: checkBoxValue,
                      enableScaleAnimation: false,
                      onTap: _onRegister,
                      text: 'Register',
                      width: double.infinity,
                      color: Branding.primaryColor,
                      textColor: Colors.white,
                      disabledColor: Branding.primaryColor.withOpacity(0.5),
                      shapeBorder: const RoundedRectangleBorder(
                        borderRadius: Sizing.inputBorder,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/'),
                        child: Text(
                          'Already Registered ?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: ScreenUtil.getInstance().getSp(12),
                          ),
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
    );
  }

  _onRegister() {
    if (_formKey.currentState!.validate()) {
      final req = RegisterParamsModel(
        firstName: _firstName.text,
        lastName: _lastName.text,
        email: _email.text,
        password: _password.text,
        passwordConfirmation: _confirmPassword.text,
        address: _address.text,
        deviceId: 'device_id',
      );
      BlocProvider.of<AuthBloc>(context).add(OnRegister(req));
    }
  }
}
