import 'package:base/pages/CreateAccount/create_account.dart';
import 'package:base/pages/Home/home.dart';
import 'package:base/pages/Login/login.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  PageController _controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.ease,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            new LoginPage(),
            HomePage(
              gotoLogin: gotoLogin,
              gotoSignup: gotoSignup,
            ),
            CreateAccountPage(
              gotoLogin: gotoLogin,
            )
          ],
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
