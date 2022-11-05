import 'package:flutter/material.dart';
import 'package:yes/list.dart';

class Detail extends StatefulWidget {
  Detail({Key? key, required this.program}) : super(key: key);
  Program program;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.program.nama),
      ),
      body: ListView(
        children: [
          Container(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 80,
                child: Image.asset(widget.program.image)),
          ),
          Center(
            child: Card(
              child: Column(children: [Text(widget.program.description)]),
            ),
          )
        ],
      ),
    );
  }
}
