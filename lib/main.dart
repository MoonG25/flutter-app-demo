import 'package:bone_app/pages/page_loading.dart';
import 'package:bone_app/pages/page_main.dart';
import 'package:bone_app/pages/page_signin.dart';
import 'package:bone_app/pages/page_signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B.ONE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Raleway',
      ),
      initialRoute: '/',
//      routes: <String, WidgetBuilder>{
//        '/': (context) => LoadingPage(),
//        '/main': (context) => MainPage(),
//        '/signin': (context) => SigninPage(),
//        '/signup': (context) => SignupPage(),
//      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => LoadingPage());
            break;
          case '/main':
            return MaterialPageRoute(builder: (context) => MainPage());
            break;
          case '/signin':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => SigninPage(),
              transitionDuration: Duration(milliseconds: 5),
              transitionsBuilder: (_, anim, __, child) {
                return FadeTransition(opacity: anim, child: child);
              },
            );
            break;
          case '/signup':
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => SignupPage(),
              transitionDuration: Duration(milliseconds: 5),
              transitionsBuilder: (_, anim, __, child) {
                return FadeTransition(opacity: anim, child: child);
              },
            );
            break;
          default:
            return MaterialPageRoute(builder: (context) => MainPage());
            break;
        }
      },
    );
  }
}