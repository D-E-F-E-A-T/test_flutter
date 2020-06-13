import 'package:base/pages/Login/login.dart';
import 'package:base/pages/Team/team.dart';
import 'package:base/route/routing_constants.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case TeamPageRoute:
      return MaterialPageRoute(builder: (context) => TeamPage());
      break;
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
  }
}
