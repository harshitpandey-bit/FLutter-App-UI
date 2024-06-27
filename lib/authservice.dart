import 'dart:async';

class AuthService {
  Future<bool> login(String email, String password) async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 2));

    // Example: Validate credentials (replace with your actual logic)
    if (email == 'a@gmail.com' && password == 'Hp@123456') {
      return true; // Login successful
    } else {
      return false; // Login failed
    }
  }
}