import 'package:flutter/material.dart';

class RiceOnlyScreen extends StatefulWidget {
  const RiceOnlyScreen({super.key});

  @override
  State<RiceOnlyScreen> createState() => _RiceOnlyScreenState();
}

class _RiceOnlyScreenState extends State<RiceOnlyScreen> {
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
                  "Rice Only",
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
                      'Plain Kanin - 10php',
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
                      'Java Kanin - 15php',
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
                      'Fried Kanin - 15php',
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
