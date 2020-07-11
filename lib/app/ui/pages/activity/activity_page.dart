import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Activity {
  String name;
  String description;
  DateTime deadline;
  DateTime postDate;

  Activity({
    this.name,
    this.description,
    this.deadline,
    this.postDate,
  });
}

class ActvitiyPage extends StatelessWidget {
  final List<Activity> _list = [
    Activity(
      name: "Atividade 1",
      description: "Descrição 1",
      deadline: DateTime.parse("2020-07-20 23:59:00Z"),
      postDate: DateTime.parse("2020-07-20"),
    ),
    Activity(
      name: "Atividade 2",
      description: "Descrição 2",
      deadline: DateTime.parse("2020-07-21 23:59:00Z"),
      postDate: DateTime.parse("2020-07-21"),
    ),
    Activity(
      name: "Atividade 3",
      description: "Descrição 3",
      deadline: DateTime.parse("2020-07-22 23:59:00Z"),
      postDate: DateTime.parse("2020-07-22"),
    ),
  ];

  final DateFormat formatterDeadline = DateFormat('dd/MM/yyyy, HH:mm');
  final DateFormat formatterPostDate = DateFormat('dd/MM/yyyy');

  Widget listActivity(Activity activity) {
    return Container(
      width: 380,
      height: 75,
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightBlue[200].withAlpha(100),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[100],
            blurRadius: 4.0,
            spreadRadius: 3.5,
            offset: Offset(0.0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.directions_transit,
                  size: 40,
                  color: Colors.grey[700],
                ),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      activity.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Data postagem: ${formatterPostDate.format(activity.postDate)}",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Data entrega: ${formatterDeadline.format(activity.deadline)}",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Turma 1"),
        elevation: 5,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Descrição Turma",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          listActivity(_list[0]),
          SizedBox(height: 10),
          listActivity(_list[1]),
          SizedBox(height: 10),
          listActivity(_list[2]),
        ],
      ),
    );
  }
}

//child: Text(formatter.format(_list[0].deadline)),
