import 'package:beMyVal/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Be My Val',
      theme: ThemeData(
        primarySwatch: Colors.red,
         brightness: Brightness.light,
          textTheme: GoogleFonts.pacificoTextTheme(
            Theme.of(context).textTheme,
          ),
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    loadSplash();
    super.initState();
  }

  loadSplash() async {
    await Future.delayed(Duration(seconds: 8));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:  Hero(
            tag: 'VALtine',
          child: Image.asset(
            'assets/images/val.gif',
          ),
        ),
      ),
    );
  }
}
