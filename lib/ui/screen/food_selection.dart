import 'package:flutter/material.dart';
import 'package:testfile/ui/screen/maiinom_screen.dart';
import 'package:testfile/ui/screen/panghimagas_screen.dart';
import 'package:testfile/ui/screen/rice_only_screen.dart';
import 'package:testfile/ui/screen/ulam_only_screen.dart';
import 'package:testfile/ui/screen/ulam_rice_screen.dart';

class FoodSelectionScreen extends StatefulWidget {
  const FoodSelectionScreen({super.key});

  @override
  State<FoodSelectionScreen> createState() => _FoodSelectionScreenState();
}

class _FoodSelectionScreenState extends State<FoodSelectionScreen> {
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
                "MENU NI ENER",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.green), // Adjust the font size as needed
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 350,
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UlamRiceScreen()),
                    );
                  },
                  child: Text(
                    'Ulam with Rice',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white), // Adjust the font size as needed
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UlamOnlyScreen()),
                    );
                  },
                  child: Text(
                    'Ulam Only',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white), // Adjust the font size as needed
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RiceOnlyScreen()),
                    );
                  },
                  child: Text(
                    'Rice Only',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white), // Adjust the font size as needed
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MaiinomScreen()),
                    );
                  },
                  child: Text(
                    'Maiinom',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white), // Adjust the font size as needed
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PanghimagasScreen()),
                    );
                  },
                  child: Text(
                    'Panghimagas',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white), // Adjust the font size as needed
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16), // Adjust padding as needed
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
