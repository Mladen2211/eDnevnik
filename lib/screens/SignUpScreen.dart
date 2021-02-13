import 'package:e_dnevnik/Providers/auth.dart';
import 'package:e_dnevnik/custom-icons/CustomIcons.dart';
import 'package:e_dnevnik/widgets/SocialIcons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import '../animation/FadeAnimation.dart';
import '../widgets/FakeAppBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../blocs/auth_bloc.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
  final authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            "Registracija",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "Kreirajte novi korisnički račun",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          )),
                    ],
                  ),
                  FadeAnimation(
                    1.3,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Color(0xFFF1F6FB),
                        elevation: 8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                shape: CircleBorder(),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: SvgPicture.asset(
                                    "assets/icons/book.svg",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  radius: 50.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.person),
                                      onPressed: null),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 20, left: 10),
                                      child: TextField(
                                        decoration:
                                            InputDecoration(hintText: 'Ime'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.person),
                                      onPressed: null),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 20, left: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Prezime'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.person),
                                      onPressed: null),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 20, left: 10),
                                      child: TextField(
                                        decoration:
                                            InputDecoration(hintText: 'e-mail'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.lock), onPressed: null),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 20, left: 10),
                                      child: TextField(
                                        decoration:
                                            InputDecoration(hintText: 'Šifra'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FadeAnimation(
                    1.4,
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 45,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Colors.lightBlue,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Prijavi me',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FadeAnimation(
                    1.6,
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            horizontalLine(),
                            Text("Social Login",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: "Poppins-Medium")),
                            horizontalLine()
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // SignInButton(
                            //   Buttons.Google,
                            //   onPressed: () {
                            //     final provider =
                            //         Provider.of<Auth>(context, listen: false);
                            //     provider.gSignUp();
                            //   },
                            // )
                            // SocialIcon(
                            //   colors: [
                            //     Color(0xFF102397),
                            //     Color(0xFF187adf),
                            //     Color(0xFF00eaf8),
                            //   ],
                            //   iconData: CustomIcons.facebook,
                            //   onPressed: () {},
                            // ),
                            SocialIcon(
                              colors: [
                                Color(0xFFff4f38),
                                Color(0xFFff355d),
                              ],
                              iconData: CustomIcons.googlePlus,
                              onPressed: () {
                                // final provider = Provider.of<Auth>(context, listen: false);
                                // provider.gSignUp();
                                authBloc.loginGoogle();
                              
                              },
                            ),
                            // SocialIcon(
                            //   colors: [
                            //     Color(0xFF17ead9),
                            //     Color(0xFF6078ea),
                            //   ],
                            //   iconData: CustomIcons.twitter,
                            //   onPressed: () {},
                            // ),
                            // SocialIcon(
                            //   colors: [
                            //     Color(0xFF00c6fb),
                            //     Color(0xFF005bea),
                            //   ],
                            //   iconData: CustomIcons.linkedin,
                            //   onPressed: () {},
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 120,
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );
