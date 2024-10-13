import 'package:flutter/cupertino.dart';

extension Navigation on BuildContext {

  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }
  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }
  void pop()=> Navigator.of(this).pop();

}