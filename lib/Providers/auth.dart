import 'dart:convert';

import 'dart:convert';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';

class Auth with ChangeNotifier{
  final _auth = FirebaseAuth.instance;
  Future<UserCredential> gSignUp(AuthCredential credential) => _auth.signInWithCredential(credential);

  Stream<User> get currentUser => _auth.authStateChanges();
}