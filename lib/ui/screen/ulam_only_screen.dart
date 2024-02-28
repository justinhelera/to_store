import 'package:flutter/material.dart';

class UlamOnlyScreen extends StatefulWidget {
  const UlamOnlyScreen({super.key});

  @override
  State<UlamOnlyScreen> createState() => _UlamOnlyScreenState();
}

class _UlamOnlyScreenState extends State<UlamOnlyScreen> {
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
                  "Ulam Only",
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
                      'Adobo - 45php',
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
                      'Sinigang - 45php',
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
                      'Chicken - 40php',
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
                      'Siomai - 25php',
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
                      'Giniling - 45php',
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
                      'Dinuguan - 45php',
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
