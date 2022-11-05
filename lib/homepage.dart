import 'package:flutter/material.dart';
import 'package:yes/detail.dart';
import 'package:yes/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nama APK"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: program.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail(
                          program: program[index],
                        ),
                      ));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    child: Image.asset(program[index].image),
                                  ),
                                  Container(
                                    width: 270,
                                    child: Text(program[index].nama),
                                  ),
                                  Container(
                                    width: 270,
                                    child: Text(program[index].description),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              );
            }),
      ),
    );
  }
}
