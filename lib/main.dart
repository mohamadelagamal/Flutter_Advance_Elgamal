import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/doc_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  setUpGetIt();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}


