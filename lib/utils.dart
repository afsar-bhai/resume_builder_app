import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'model.dart';

class SharedPreferencesHelper {
  static const String _keyUserProfile = 'userProfile';

  // Save user profile data to SharedPreferences
  static Future<void> saveUserProfile(UserProfile user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userJson = jsonEncode(user.toJson());
    prefs.setString(_keyUserProfile, userJson);
  }

  // Get user profile data from SharedPreferences
  static Future<UserProfile?> getUserProfile() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userJson = prefs.getString(_keyUserProfile);

    if (userJson != null) {
      final Map<String, dynamic> userData = jsonDecode(userJson);
      return UserProfile.fromJson(userData);
    } else {
      return null;
    }
  }

  // Clear user profile data from SharedPreferences
  static Future<void> clearUserProfile() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(_keyUserProfile);
  }
}
