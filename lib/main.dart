import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Listview Chavez",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PaginaIncio(),
    );
  }
}

class PaginaIncio extends StatefulWidget {
  const PaginaIncio({Key? key}) : super(key: key);

  @override
  State<PaginaIncio> createState() => _PaginaIncioState();
}

class _PaginaIncioState extends State<PaginaIncio> {
  List<String> images = [
    "assets/images/avayar1.jpg",
    "assets/images/avayar2.jpg",
    "assets/images/avayar3.jpg",
    "assets/images/avayar4.jpg",
    "assets/images/avayar5.png",
    "assets/images/avayar6.jpg",
    "assets/images/avayar7.jpg",
    "assets/images/avayar8.jpg",
    "assets/images/avayar9.jpg",
    "assets/images/avayar10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Isaac Chavez"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
