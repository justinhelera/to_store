import 'package:flutter/material.dart';

class UlamRiceScreen extends StatefulWidget {
  const UlamRiceScreen({super.key});

  @override
  State<UlamRiceScreen> createState() => _UlamRiceScreenState();
}

class _UlamRiceScreenState extends State<UlamRiceScreen> {
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
                  "Ulam with Rice",
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
                      'Adobo with Kanin - 60php',
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
                      'Sinigang with Kanin - 60php',
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
                      'Chicken with Kanin - 50php',
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
                      'Siomai with Kanin - 35php',
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
                      'Giniling with Kanin - 60php',
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
                      'Dinuguan with Kanin - 60php',
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
