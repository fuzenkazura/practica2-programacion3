import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyApp createState() => _MyApp();
}class _MyApp extends State<MyApp> {
  bool monVal = false;
  bool tuVal = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pratica 2",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),

              Text(""),
              Row(
                children: <Widget >[
                  Text(
                    "Email:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  )
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Phone:",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Message:",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: <Widget>[
                Checkbox(
                value: monVal,
                onChanged: (bool value) {
                  setState(() {
                    monVal = value;
                  });
                },
                ),
                  Text(
                      "Send a copy to yourself",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      )
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: tuVal,
                    onChanged: (bool value) {
                      setState(() {
                        tuVal = value;
                      });
                    },
                  ),
                  Text(
                      "Subscribe to our newsletter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      )
                  )
                ],
              ),
              RaisedButton(
                elevation: 10,
                splashColor: Colors.yellow,
                color: Colors.orange,
                onPressed: () {},
                child: const Text(
                    'Send',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Text(
                "*(Required fields)",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );

  }
}