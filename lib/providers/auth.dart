/*import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;
  Timer _authTimer;

  bool get isLoggedIn {
    return token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }

    return null;
  }

  String get userId {
    return _userId;
  }

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/$urlSegment?key=AIzaSyC3DowSbq3AeS6TyNeY48caddZqrLi7VfU';

    try {
      final response = await http.post(
        url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }),
      );

      final decodedResponse = json.decode(response.body);

      if (decodedResponse['error'] != null) {
        throw HttpException(decodedResponse['error']['message']);
      }

      _token = decodedResponse['idToken'];
      _userId = decodedResponse['localId'];
      _expiryDate = DateTime.now()
          .add(Duration(seconds: int.parse(decodedResponse['expiresIn'])));
      _autoLogout();
      notifyListeners();

      final sysIO = await SharedPreferences.getInstance();

      final userData = json.encode({
        'token': _token,
        'userId': _userId,
        'expiryDate': _expiryDate.toIso8601String(),
      });

      sysIO.setString('userData', userData);
    } catch (error) {
      //print(error);
      throw error;
      //throw HttpException(e.toString());
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'accounts:signUp');
    //return _authenticate(email, password, 'signInWithPassword');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'accounts:signInWithPassword');
  }

  Future<bool> tryAutoLogin() async {
    final sysIO = await SharedPreferences.getInstance();

    if (!sysIO.containsKey('userData')) {
      return false;
    }

    final userData =
        json.decode(sysIO.getString('userData')) as Map<String, Object>;
    final expiryDate = DateTime.parse(userData['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) {
      return false;
    }

    _token = userData['token'];
    _userId = userData['userId'];
    _expiryDate = expiryDate;

    notifyListeners();
    _autoLogout();

    return true;
  }

  Future<void> logout() async {
    _token = null;
    _userId = null;
    _expiryDate = null;

    if (_authTimer != null) {
      _authTimer.cancel();
      _authTimer = null;
    }

    notifyListeners();

    final sysIO = await SharedPreferences.getInstance();
    sysIO.clear();
  }

  void _autoLogout() {
    if (_authTimer != null) {
      _authTimer.cancel();
    }

    final timetoExpiry = _expiryDate.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timetoExpiry), logout);
  }
}*/
