//import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_selection/resources/theme/themes.dart';
import 'package:stacked_services/stacked_services.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() async {
  setupLocator(); // Dis will register d functions registered in d locator
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  // Make sure all d widgets are ready to be bind with fireStore service
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());

  /* runApp(DevicePreview(
    builder: (BuildContext context) => const MyApp(),
    //enabled: false,
  ));*/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      theme: getThemes(),

      // The stacked_services: package provide you with NavigationServices, DialogService,
      // snackBarServices, BottomSheetServices. We will like to show dem from our viewModel
      // and not have to do it inside of our UI code

      navigatorKey: StackedService.navigatorKey,

      // We construct a new instance of StackedRouter, dat is d router dart will
      // be generated when we run the 'flutter pub run build_runner build
      // --delete-conflicting-outputs' command. A app.router.dart file will be
      // created in the app folder.
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  } // flutter pub run build_runner build --delete-conflicting-outputs
}
