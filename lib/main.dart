import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Providers/auth.dart';
import 'Screens/WelcomeScreen.dart';
import 'helpers/custom_route.dart';
import 'loadingScreen/loader.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/SignUPScreen.dart';

import 'blocs/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
        // providers: [
        //   ChangeNotifierProvider.value(
        //     value: Auth(),
        //   ),
        // ],
        create: (context) => AuthBloc(),
        child: MaterialApp(
          title: 'Dobro došli',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.teal,
            scaffoldBackgroundColor: Color(0xFFF1F6FB),
          ),
          initialRoute: 'Wellcome',
          routes: {
            'SignIn': (context) => SignInScreen(),
            'SignUp': (context) => SignUpScreen(),
            'Loader': (context) => LoadingScreen(),
            'Wellcome': (context) => WelcomeScreen(),
          },
        )
        // Consumer<Auth>(
        //   builder: (ctx, auth, child) => MaterialApp(
        //       title: 'eDnevnik',
        //       theme: ThemeData(
        //           // brightness: Brightness.dark,
        //           primarySwatch: Colors.teal,
        //           scaffoldBackgroundColor: Color(0xFFF1F6FB),
        //           pageTransitionsTheme: PageTransitionsTheme(builders: {
        //             TargetPlatform.android: CustomPageTransitionBuilder(),
        //             TargetPlatform.iOS: CustomPageTransitionBuilder(),
        //           })),
        //       home: WelcomeScreen(),
        //       initialRoute: 'Wellcome',
        //       // home: auth.isAuth
        //       //     ? ProductsOverviewScreen()
        //       //     : FutureBuilder(
        //       //         future: auth.tryAutoLogin(),
        //       //         builder: (ctx, authResultSnapshot) =>
        //       //             authResultSnapshot.connectionState ==
        //       //                     ConnectionState.waiting
        //       //                 ? SplashScreen()
        //       //                 : AuthScreen()),
        //       routes: {
        //         'SignIn': (context) => SignInScreen(),
        //         'SignUp': (context) => SignUpScreen(),
        //         'Loader': (context) => LoadingScreen(),
        //         'Wellcome': (context) => WelcomeScreen(),
        //       }),
        // ),
        );
    return MaterialApp(
      title: 'Dobro došli',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Color(0xFFF1F6FB),
      ),
      initialRoute: 'Wellcome',
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
        'Loader': (context) => LoadingScreen(),
        'Wellcome': (context) => WelcomeScreen(),
      },
    );
  }
}
