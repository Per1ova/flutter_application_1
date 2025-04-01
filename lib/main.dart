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
            // النص العلوي
            Text(
              'Hello App Akademie!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // مسافة تحت النص

            // المربعات مع الأزرار
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // تبدأ من اليسار
              children: [
                buildColoredBox(Colors.red),
                SizedBox(width: 10), // مسافة بين المربعات
                buildColoredBox(Colors.green),
                SizedBox(width: 10),
                buildColoredBox(Colors.blue),
              ],
            ),
            SizedBox(height: 30), // مسافة بين المربعات والوجوه

            // الأيقونات في المنتصف
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.emoji_emotions_outlined, size: 50, color: Colors.black),
                SizedBox(width: 30), // مسافة بين الأيقونتين
                Icon(Icons.emoji_emotions_outlined, size: 50, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

// دالة لإنشاء مربع ملون مع زر بنفسجي في المنتصف
Widget buildColoredBox(Color color) {
  return Container(
    width: 70,
    height: 70,
    color: color,
    child: Center(
      child: ElevatedButton(
        onPressed: () {
          print('تم الضغط على زر Abc');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple, // لون الزر بنفسجي
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        child: Text('Abc', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}