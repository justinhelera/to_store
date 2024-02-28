import 'package:flutter/material.dart';

class PanghimagasScreen extends StatefulWidget {
  const PanghimagasScreen({super.key});

  @override
  State<PanghimagasScreen> createState() => _PanghimagasState();
}

class _PanghimagasState extends State<PanghimagasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text(
          'To-Store',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Maiinom",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.green), // Adjust the font size as needed
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Tubig - 10php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'BJ - 25php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'CokeMismo - 20php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'SpriteMismo - 20php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'RoyalMismo - 20php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'C2 - 18php',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              Colors.white), // Adjust the font size as needed
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }
}
