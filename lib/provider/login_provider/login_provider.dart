import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:novindus/service/api_service.dart';

import '../../data/api/login_response.dart';

class LoginProvider extends ChangeNotifier {
  LoginResponse? _loginResponse;
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  LoginResponse? get loginResponse => _loginResponse;

  final APIService apiService = APIService();

  Future<void> login(String username, String password) async {
    try {
      _loginResponse = await apiService.login(username, password);

      switch (_loginResponse?.code) {
        case 200:
        // Login successful
          _isLoggedIn = true;
          log("Login successful");
          // Navigate to next screen (replace with your navigation logic)
          // e.g., Navigator.pushReplacementNamed(context, '/nextScreen');
          break;
        case 400:
          log("Login error: Bad Request");

          break;
        case 401:
          log("Login error: Unauthorized");

          break;
        case 403:
          log("Login error: Forbidden");

          break;
        case 404:
          log("Login error: Not Found");

          break;
        case 500:
          log("Login error: Internal Server Error");

          break;
        case 502:
          log("Login error: Bad Gateway");

          break;
        case 503:
          log("Login error: Service Unavailable");

          break;
        default:
          log("Login error: Unexpected code ${_loginResponse?.code}");

      }

      notifyListeners();
    } catch (error) {
      log("Unexpected error: $error");

    }
  }

  void logout() {
    // Logic to log out user
    _isLoggedIn = false;
    notifyListeners();
  }
}
