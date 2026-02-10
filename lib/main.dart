import 'package:flutter/material.dart';
import 'package:flutter_fav/app.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

// lib/main.dart
void main() {
  const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  if (flavor == 'prod') {
    FlavorConfig(
      name: "PROD",
      color: Colors.blue,
      location: BannerLocation.bottomStart,
      variables: {"baseUrl": "https://api.example.com"},
    );
  } else if (flavor == 'staging') {
    FlavorConfig(
      name: "STAGING",
      color: Colors.green,
      location: BannerLocation.bottomStart,
      variables: {"baseUrl": "https://staging.example.com"},
    );
  } else {
    FlavorConfig(
      name: "DEV",
      color: Colors.red,
      location: BannerLocation.bottomStart,
      variables: {"baseUrl": "https://dev.example.com"},
    );
  }

  runApp(MyApp());
}
