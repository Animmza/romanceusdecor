import 'package:flutter/material.dart';
import 'package:romanceusdecor/services/auth_services.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  AuthServices _authServices = AuthServices();
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1500), () {}).then((value) {
      if (_authServices.isLoggedIn()) {
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        Navigator.of(context).pushReplacementNamed('/loginpage');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xFFea2e4d),
              Color(0xFFf00d3a),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/preview.png'),
        ),
      ),
    );
  }
}
