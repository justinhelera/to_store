import 'package:flutter/material.dart';

class CustomerOrderDetailsScreen extends StatelessWidget {
  final List<String> selectedItems;
  final String title;
  final String appBarTitle;
  final List<Item> items;

  const CustomerOrderDetailsScreen({
    Key? key,
    required this.selectedItems,
    required this.title,
    required this.appBarTitle,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Order:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedItems[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Text('Back to Main Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {}
