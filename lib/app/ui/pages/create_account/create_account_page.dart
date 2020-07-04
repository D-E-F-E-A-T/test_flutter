import 'package:base/app/blocs/create_account_bloc.dart';
import 'package:base/app/routes/routing_constants.dart';
import 'package:base/app/ui/widgets/field_widgets.dart';
import 'package:base/app/ui/widgets/submit_button_widget.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  final CreateAccoutnBLoc _createAccoutnBLoc = CreateAccoutnBLoc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.08), BlendMode.dstATop),
            image: NetworkImage(
                'https://image.freepik.com/vetores-gratis/tempo-para-trabalhar-o-conjunto-de-icones-decorativos_98292-7098.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(60.0),
                child: Center(
                  child: Icon(
                    Icons.headset_mic,
                    color: Colors.blueAccent,
                    size: 50.0,
                  ),
                ),
              ),
              FormFieldWidget(
                labelText: "Nome *",
                hintText: "João",
                onChange: _createAccoutnBLoc.changeName,
                stream: _createAccoutnBLoc.name,
                obscureText: false,
              ),
              Divider(
                height: 24.0,
              ),
              FormFieldWidget(
                labelText: "Sobrenome *",
                hintText: "da Silva",
                onChange: _createAccoutnBLoc.changeSurname,
                stream: _createAccoutnBLoc.surname,
                obscureText: false,
              ),
              Divider(
                height: 24.0,
              ),
              FormFieldWidget(
                labelText: "E-mail *",
                hintText: "teste@teste.com",
                onChange: _createAccoutnBLoc.changeEmail,
                stream: _createAccoutnBLoc.email,
                obscureText: false,
              ),
              Divider(
                height: 24.0,
              ),
              FormFieldWidget(
                labelText: "Senha *",
                hintText: "********",
                onChange: _createAccoutnBLoc.changePassword,
                stream: _createAccoutnBLoc.password,
                obscureText: true,
              ),
              Divider(
                height: 24.0,
              ),
              FormFieldWidget(
                labelText: "Confirmação de Senha *",
                hintText: "********",
                onChange: _createAccoutnBLoc.changeConfirmPassword,
                stream: _createAccoutnBLoc.confirmPassword,
                obscureText: true,
              ),
              Divider(
                height: 24.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: StreamBuilder<bool>(
                    stream: _createAccoutnBLoc.outSubmitValid,
                    builder: (context, snapshot) {
                      return Row(
                        children: <Widget>[
                          Expanded(
                            child: SubmitButtonWidget(
                                onPressed: () {}, disabled: snapshot.data),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Já possui uma conta?",
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, LoginPageRoute),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                    Text(
                      "OU CONECTE-SE COM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.blueAccent,
                        onPressed: null,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Google",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
