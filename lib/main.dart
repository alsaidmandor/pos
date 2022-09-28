import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/di/injection.dart' as di;

import 'app.dart';
import 'core/utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  Bloc.observer = MyBlocObserver();

  bool isRtl = true;
  runApp(PosApp(
    isRtl: isRtl,
  ));
}
