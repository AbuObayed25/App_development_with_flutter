import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MySnackBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "Hello,World!",
              style: TextStyle(
                  fontSize: 28, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome to flutter!",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            // Optional: Add your image here
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfvJQdTD8IFAUS4jNkFrVYGai1NknAbHAMA&s',
              height: 250,
              width: 250,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                MySnackBar("Button Pressed!", context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
