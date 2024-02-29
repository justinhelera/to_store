import 'package:flutter/material.dart';

class RiceOnlyScreen extends StatefulWidget {
  const RiceOnlyScreen({Key? key}) : super(key: key);

  @override
  State<RiceOnlyScreen> createState() => _RiceOnlyScreenState();
}

class _RiceOnlyScreenState extends State<RiceOnlyScreen> {
  List<String> selectedItems = []; // List to store selected items

  // Function to navigate to the next screen with selected item
  void navigateToNextScreen(String item) {
    setState(() {
      selectedItems.add(item); // Add selected item to the list
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectedItemScreen(
          selectedItems: selectedItems,
          backgroundColor: Colors.green, // Pass background color
        ),
      ),
    );
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rice Only",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.green,
                ), // Adjust the font size as needed
              ),
              SizedBox(
                height: 80,
              ),
              buildItemButton('Plain Kanin', 10),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Java Kanin', 15),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Fried Kanin', 15),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build item button
  Widget buildItemButton(String item, double price) {
    return Container(
      width: 350,
      color: Colors.green,
      child: TextButton(
        onPressed: () {
          // Navigate to the next screen with selected item
          navigateToNextScreen('$item - $price php');
        },
        child: Text(
          '$item - $price php',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ), // Adjust the font size as needed
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(16), // Adjust padding as needed
        ),
      ),
    );
  }
}

class SelectedItemScreen extends StatelessWidget {
  final List<String> selectedItems;
  final Color backgroundColor; // Background color

  const SelectedItemScreen({
    required this.selectedItems,
    required this.backgroundColor, // Required background color
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: Container(
        color: backgroundColor, // Set background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Show selected items in a column
              Column(
                children: selectedItems
                    .map((item) => Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              // Add border
                              color: Colors.black, // Border color
                              width: 2, // Border width
                            ),
                          ),
                          child: Text(
                            'Selected Item: $item',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the previous screen
                  Navigator.pop(context);
                },
                child: Text('Add Another Item'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle making an order
                },
                child: Text('Make an Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
