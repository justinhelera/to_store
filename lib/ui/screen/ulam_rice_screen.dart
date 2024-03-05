import 'package:flutter/material.dart';

class UlamRiceScreen extends StatefulWidget {
  const UlamRiceScreen({Key? key}) : super(key: key);

  @override
  State<UlamRiceScreen> createState() => _UlamRiceScreenState();
}

class _UlamRiceScreenState extends State<UlamRiceScreen> {
  List<String> selectedItems = []; // List to store selected items

  // Function to navigate to the next screen with selected item
  void navigateToNextScreen(BuildContext context, String item) {
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
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: Text(
          'To-Store',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rice with Dish",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.green,
                ), // Adjust the font size as needed
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color here
                    width: 1, // Set the border width here
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildItemButton(context, 'Adobo\nwith\nKanin', 60),
                        buildItemButton(context, 'Sinigang\nwith\nKanin', 60),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildItemButton(context, 'Chicken\nwith\nKanin', 50),
                  buildItemButton(context, 'Siomai\nwith\nKanin', 35),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildItemButton(context, 'Giniling\nwith\nKanin', 60),
                  buildItemButton(context, 'Dinuguan\nwith\nKanin', 60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build item button
  Widget buildItemButton(BuildContext context, String item, double price) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(150, 95, 200, 20),
        borderRadius: BorderRadius.circular(20.00),
        border: Border.all(color: Colors.green.shade800, width: 8),
      ),
      width: 150,
      height: 150,
      child: TextButton(
        onPressed: () {
          // Navigate to the next screen with selected item
          navigateToNextScreen(context, item);
        },
        child: Text(
          '$item - $price php',
          style: TextStyle(
            fontSize: 20,
            color: Colors.green.shade700,
          ), // Adjust the font size as needed
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
    this.backgroundColor = Colors.white, // Default background color
  });

  @override
  _SelectedItemScreenState createState() => _SelectedItemScreenState();
}

class _SelectedItemScreenState extends State<SelectedItemScreen> {
  late TextEditingController _controller; // Controller for the text field

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(); // Initialize the controller
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when not needed
    super.dispose();
  }

  String? customerName = '';

  // Function to handle making an order
  void makeOrder(BuildContext context) {
    // Show confirmation dialog for making an order
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Order"),
          content: Text("Are you sure you want to make this order?"),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate to order details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailsScreen(
                      selectedItems: widget.selectedItems,
                      customerName: _controller.text, // Use controller value
                    ),
                  ),
                );
              },
              child: Text('Confirm'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
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
              TextField(
                controller: _controller, // Assign the controller
                onChanged: (value) {
                  setState(() {
                    customerName = value; // Update customer name
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Customer Name',
                ),
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
                  makeOrder(context);
                },
                child: Text('Make an Order'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Clear selected items
                  widget.selectedItems.clear();
                  Navigator.pop(context);
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

class OrderDetailsScreen extends StatefulWidget {
  final List<String> selectedItems;
  final String? customerName;

  const OrderDetailsScreen({
    required this.selectedItems,
    required this.customerName,
  });

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  // Variable to track whether the order was successfully placed
  bool orderPlaced = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              readOnly: true,
              controller: TextEditingController(text: widget.customerName),
              decoration: InputDecoration(
                labelText: 'Customer Name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Items:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.selectedItems
                  .map((item) => Text(
                        '- $item',
                        style: TextStyle(fontSize: 16),
                      ))
                  .toList(),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Place order
                // You can add your code here to process the order
                setState(() {
                  orderPlaced = true; // Set orderPlaced to true
                });
                // Show a SnackBar to indicate the order was successfully placed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Order successfully placed!'),
                  ),
                );
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UlamRiceScreen(),
  ));
}
