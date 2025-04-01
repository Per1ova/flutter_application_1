import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Aufgabe 1'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Text(
              'Hello App Akademie!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start, 
              children: [
                buildColoredBox(Colors.red),
                SizedBox(width: 10), 
                buildColoredBox(Colors.green),
                SizedBox(width: 10),
                buildColoredBox(Colors.blue),
              ],
            ),
            SizedBox(height: 30), 

           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.emoji_emotions_outlined, size: 50, color: Colors.black),
                SizedBox(width: 30), 
                Icon(Icons.emoji_emotions_outlined, size: 50, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}


Widget buildColoredBox(Color color) {
  return Container(
    width: 70,
    height: 70,
    color: color,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          print('null');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple, 
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        child: Text('Abc', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}
