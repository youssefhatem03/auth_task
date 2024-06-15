import 'package:authentication_task/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/LoginOrSignup/loginOrSignup.dart';
import 'constants.dart';
import 'firebase_options.dart';

void main() async {
  //TODO: initialize Firebase here
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
       return MaterialApp(
          debugShowCheckedModeBanner: false,
         // added this so the snack bar would work
         scaffoldMessengerKey: scaffoldMessengerKey,
         initialRoute: LogInOrSignup.routeName,
          routes: routes,
          theme: ThemeData(fontFamily: 'Changa'),
        );
      },
    );
  }
}