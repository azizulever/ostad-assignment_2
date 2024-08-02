import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10), //Adds some space between two texts
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20), //Adds some space between the text and the image
            Image.asset(
              "assets/images/flutter_logo.png",
              height: 160,
            ),
            SizedBox(height: 10), //Adds some space between the text and the image
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                minimumSize: Size(10, 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}