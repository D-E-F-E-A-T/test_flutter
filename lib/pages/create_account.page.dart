import 'package:base/widgets/form2.conatiner.dart';
import 'package:base/widgets/sign.up.dart';
import 'package:flutter/material.dart';

class CreateAccountage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          gradient: new LinearGradient(
              colors: [Colors.lightBlue[50], Colors.lightBlue[200]],
              begin: Alignment.centerRight,
              end: new Alignment(-1.0, -1.0)),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70, bottom: 32),
                  child: Image(
                      image: NetworkImage(
                        "https://i2.wp.com/www.institutoniemeyer.org/wp-content/uploads/2018/09/teste.png?fit=400%2C400",
                      ),
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain),
                ),
                Form2Container(),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: () {
                      print("clicou para entrar");
                    },
                    child: Container(
                      width: 320,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[800],
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3
                        ),
                      ),
                    ),
                  ),
                ),
                SignUpButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
