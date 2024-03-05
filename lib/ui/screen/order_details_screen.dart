import 'package:flutter/material.dart';

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
              onChanged: (value) {
                setState(() {
                  // Update customer name
                  widget.customerName = value;
                });
              },
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
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
