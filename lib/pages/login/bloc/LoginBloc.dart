import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/pages/login/repo/UserRepo.dart';
import 'package:scanner/pages/login/repo/LoginRepo.dart';

class LoginBloc implements Bloc {
  LoginRepo repo = LoginRepo();
  UserRepo userRepo = UserRepo();

  final phone = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();

  Stream<String> get phoneStream => phone.stream;
  Stream<String> get passwordStream => password.stream;

  Stream<bool> get validSubmit =>
      Rx.combineLatest2(phoneStream, passwordStream, (phone, password) => true);

  submit({required BuildContext context}) async {
    await repo
        .init(phone: phone.value, password: password.value)
        .then((data) async {
      //Note: This will be removed one the next pull request
      // if (data.error == null) {
      //   final storage = new FlutterSecureStorage();

      //   await storage.write(key: 'token', value: data.accessToken);

      //   await userRepo.init(token: data.accessToken).then((userData) async {
      //     print('Datas: ${userData.toString()}');
      //     if (userData != null) {
      //       await storage.write(key: 'user', value: json.encode(userData));
      //       Navigator.pushReplacementNamed(context, '/home');
      //     }
      //   });
      // }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    phone.close();
    password.close();
  }
}

final login = LoginBloc();
