import 'package:base/app/blocs/create_class_bloc.dart';
import 'package:base/app/ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateClassPage extends StatelessWidget {
  CreateClassBloc _createClassBloc = CreateClassBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text(
          "Criar Turma",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          StreamBuilder<bool>(
              stream: _createClassBloc.outSubmitValid,
              initialData: false,
              builder: (context, snapshot) {
                return GestureDetector(
                  onTap: snapshot.data != null && snapshot.data
                      ? () {
                          Get.back();
                        }
                      : null,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Center(
                      child: Text(
                        "Criar",
                        textScaleFactor: 1.5,
                        style: new TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                          color: snapshot.data != null && snapshot.data
                              ? Colors.blue
                              : Colors.blue[200],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFieldWidget(
              labelText: "Nome",
              stream: _createClassBloc.name,
              onChanged: _createClassBloc.changeName,
            ),
            TextFieldWidget(
              labelText: "Tópico",
              stream: _createClassBloc.topic,
              onChanged: _createClassBloc.changeTopic,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
