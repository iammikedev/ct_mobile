import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../bloc.dart';

class HomeBloc implements Bloc {
  qrScanner({required BuildContext context}) async {
    // final result = await BarcodeScanner.scan();
    Navigator.pushNamed(context, '/qr');
  }

  Future<void> getProfile() async {
    // final String? value = await storage.read(key: 'user');
    final String? value = '';
    var datas = json.decode(value ?? '');

    return datas;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

final home = HomeBloc();
