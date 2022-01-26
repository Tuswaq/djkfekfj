import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ChatTemplate(
            name: "ILAY GUSEV",
          ),
          Divider(
            color: Colors.greenAccent,
          ),
          ChatTemplate(
             name: "ILAY Drewq",
          ),
          Divider(
            color: Colors.greenAccent,
          ),
          ChatTemplate(),
          Divider(
            color: Colors.greenAccent,
          ),
          ChatTemplate(),
          Divider(
            color: Colors.greenAccent,
          ),
          ChatTemplate(),
          Divider(
            color: Colors.greenAccent,
          ),
          ChatTemplate(),
      ],
      ),
    );
  }
}


class ChatTemplate extends StatefulWidget {
  ChatTemplate({Key? key, this.name}) : super(key: key);

  String? name;

  @override
  _ChatTemplateState createState() => _ChatTemplateState();
}

class _ChatTemplateState extends State<ChatTemplate> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Container(
      width: size.width,
      padding: EdgeInsets.all(10.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:NetworkImage("https://pbs.twimg.com/media/DO8u2yMX4AAHehd.jpg") ,
            radius: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "About Me",
                 style: TextStyle(
                  fontSize: 16,
                ),
            ],
          ),
      ],
      ) ,
    );
  }
}