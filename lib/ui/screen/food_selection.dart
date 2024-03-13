import 'package:flutter/material.dart';
import 'package:testfile/ui/screen/maiinom_screen.dart';
import 'package:testfile/ui/screen/panghimagas_screen.dart';
import 'package:testfile/ui/screen/rice_only_screen.dart';
import 'package:testfile/ui/screen/ulam_only_screen.dart';
import 'package:testfile/ui/screen/ulam_rice_screen.dart';

class FoodSelectionScreen extends StatefulWidget {
  const FoodSelectionScreen({Key? key}) : super(key: key);

  @override
  State<FoodSelectionScreen> createState() => _FoodSelectionScreenState();
}

class _FoodSelectionScreenState extends State<FoodSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(
          'To-Store',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/img.png', // Replace 'assets/img.png' with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "ENER'S FOODHUB",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 95, 200, 20),
                        borderRadius: BorderRadius.circular(30.00),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 6,
                        )),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UlamRiceScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Rice with Dish',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 95, 200, 20),
                        borderRadius: BorderRadius.circular(30.00),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 6,
                        )),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UlamOnlyScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Ulam only',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 95, 200, 20),
                        borderRadius: BorderRadius.circular(30.00),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 6,
                        )),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RiceOnlyScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Rice Only',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 95, 200, 20),
                        borderRadius: BorderRadius.circular(30.00),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 6,
                        )),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MaiinomScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Drinks',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 95, 200, 20),
                        borderRadius: BorderRadius.circular(30.00),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 6,
                        )),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PanghimagasScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Desserts',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ], // Closing the children property of Stack widget
      ), // Closing the Stack widget
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FoodSelectionScreen(),
  ));
}
