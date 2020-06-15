import 'package:flutter/material.dart';

class Item {
  final String title;
  final String catagory;

  Item({
    this.title,
    this.catagory,
  });
}

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("A definir"),
        ),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
      ),
      body: Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
      title: 'Turma 1',
      catagory: "15 Alunos",
    ),
    Item(
      title: 'Turma 2',
      catagory: "10 Alunos",
    ),
    Item(
      title: 'Turma 3',
      catagory: "5 Alunos",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.catagory,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
