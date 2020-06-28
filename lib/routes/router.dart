import 'package:base/ui/pages/create_account/create_account_page.dart';
import 'package:base/ui/pages/login/login_page.dart';
import 'package:base/ui/pages/team/team_page.dart';
import 'package:base/routes/routing_constants.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case TeamPageRoute:
      return MaterialPageRoute(builder: (context) => TeamPage());
      break;
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
    case CreateAccountPageRoute:
      return MaterialPageRoute(builder: (context) => CreateAccountPage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
  }
}
