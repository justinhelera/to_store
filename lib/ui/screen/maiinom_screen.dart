import 'package:flutter/material.dart';

class MaiinomScreen extends StatefulWidget {
  const MaiinomScreen({Key? key}) : super(key: key);

  @override
  State<MaiinomScreen> createState() => _MaiinomScreenState();
}

class _MaiinomScreenState extends State<MaiinomScreen> {
  List<String> selectedItems = [];

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
                "Maiinom",
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
              buildItemButton('BJ', 25),
              SizedBox(
                height: 30,
              ),
              buildItemButton('C2', 15),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Coke', 10),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Yakult', 15),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Cobra', 25),
              SizedBox(
                height: 30,
              ),
              buildItemButton('Royal', 20),
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
          navigateToNextScreen(item);
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

class SelectedItemScreen extends StatefulWidget {
  final List<String> selectedItems;
  final Color backgroundColor; // Background color

  const SelectedItemScreen({
    required this.selectedItems,
    required this.backgroundColor, // Required background color
  });

  @override
  _SelectedItemScreenState createState() => _SelectedItemScreenState();
}

class _SelectedItemScreenState extends State<SelectedItemScreen> {
  // Function to handle clearing selected items
  void clearSelectedItems() {
    setState(() {
      widget.selectedItems.clear(); // Clear selected items list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: Container(
        color: widget.backgroundColor, // Set background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Show selected items in a column
              Column(
                children: widget.selectedItems
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
                  // Navigate back to the selection screen
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Clear selected items
                  clearSelectedItems();
                },
                child: Text('Clear Selected Items'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
