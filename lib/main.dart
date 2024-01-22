import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_shop/app/app.dart';
import 'package:the_shop/app/app_bloc_observer.dart';
import 'package:the_shop/app/app_starter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _run();
}

Future<void> _run() async {

  Bloc.observer = AppBlocObserver.instance();

  await AppStarter().init();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(ShopApp());
}
