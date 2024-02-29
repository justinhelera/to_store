import 'package:flutter/material.dart';

class MenuBox extends StatelessWidget {
  final String menuName;
  final List<String> subMenuOptions;

  const MenuBox({
    required this.menuName,
    required this.subMenuOptions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubMenuScreen(
              menuName: menuName,
              options: subMenuOptions,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            menuName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class SubMenuScreen extends StatefulWidget {
  final String menuName;
  final List<String> options;

  const SubMenuScreen({required this.menuName, required this.options});

  @override
  _SubMenuScreenState createState() => _SubMenuScreenState();
}

class _SubMenuScreenState extends State<SubMenuScreen> {
  String selectedOption = '';

  // Function to generate the buttons dynamically
  Widget _buildButton(String option) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedOption = option;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow, // Change background color to yellow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            option,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Menu Selection'),
      ),
      backgroundColor: Colors.lightGreenAccent, // Set background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sub-menu for ${widget.menuName}',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 15),
            Column(
              children: widget.options.map((option) {
                return Column(
                  children: [
                    _buildButton(option),
                    SizedBox(height: 8),
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 15),
            Text(
              'Selected Option: $selectedOption',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
