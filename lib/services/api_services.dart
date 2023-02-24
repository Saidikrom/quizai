import 'dart:convert';
import 'dart:io';

// import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../widgets/show_error_dialog.dart';

class Auth with ChangeNotifier {
  String? _token;
  DateTime? _expiryDate;
  String? _userId;
  String? userName;

  Auth({this.userName});
  final apiKey = "AIzaSyBihT8HfDCkfeJ6uVJOhRj5OuPDjhu0Kfw";
  Future<void> authenticate(String email, String password, String urlSegment,
      BuildContext context) async {
    final apiKey = "AIzaSyBihT8HfDCkfeJ6uVJOhRj5OuPDjhu0Kfw";
    try {
      final auth = Uri.parse(
          "https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=$apiKey");

      var response = await http.post(
        auth,
        body: jsonEncode(
          {
            "email": email,
            "password": password,
            "returnSecureToken": true,
          },
        ),
      );
      final data = jsonDecode(response.body);
      if (data["error"] != null) {
        var errorMessage = "sorry error occured";
        if (data["error"]["message"].contains("EMAIL_EXISTS")) {
          errorMessage = "Email already exist";
        } else if (data["error"]["message"].contains("INVALID_EMAIL")) {
          errorMessage = "Please enter vali email";
        } else if (data["error"]["message"].contains("WEAK_PASSWORD")) {
          errorMessage = "simple password";
        } else if (data["error"]["message"].contains("EMAIL_NOT_FOUND")) {
          errorMessage = "user not ound";
        } else if (data["error"]["message"].contains("INVALID_PASSWORD")) {
          errorMessage = "Password is not true";
        }
        print(errorMessage);
        showErrorDialog(context, errorMessage);
      } else {
        Navigator.of(context).pushNamed("/bottom");
      }
    } on SocketException {
      throw HttpException('No internet connection');
    } catch (e) {
      print(e);
    }
  }

  Future<void> signup(
      String email, String password, BuildContext context) async {
    return authenticate(email, password, "signUp", context);
  }

  Future<void> signIn(
      String email, String password, BuildContext context) async {
    return authenticate(email, password, "signInWithPassword", context);
  }
}
