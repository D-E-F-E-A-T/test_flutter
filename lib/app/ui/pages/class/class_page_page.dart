import 'package:base/app/ui/pages/class/widgets/item_list.dart';
import 'package:base/app/ui/pages/create_class/create_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Class {
  String title;
  String topic;

  Class({this.title, this.topic});
}

class ClassPage extends StatelessWidget {
  final List<Class> _list = [
    Class(title: "Turma 1", topic: "Tópico 1"),
    Class(title: "Turma 2", topic: "Tópico 2"),
    Class(title: "Turma 3", topic: "Tópico 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CreateClassPage());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          Class item = _list[index];
          return ItemList(
            title: item.title,
            topic: item.topic,
          );
        },
      ),
    );
  }
}
