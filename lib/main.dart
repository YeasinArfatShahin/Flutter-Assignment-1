import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment_1());
}

class Assignment_1 extends StatelessWidget {
  const Assignment_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);
  Snackmessage(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        toolbarOpacity: 1,
        elevation: 0,
        title: Text("AppBar"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              Snackmessage("I'm serach Button", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Snackmessage("I'm settings Button", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Snackmessage("I'm menu Button", context);
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Snackmessage("I'm FLoating action Button", context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
