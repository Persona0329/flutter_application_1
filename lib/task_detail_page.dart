import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 26, 26, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PressableRoundedCorner(label: 'Corner 1'),
            SizedBox(height: 40),
            PressableRoundedCorner(label: 'Corner 2'),
            SizedBox(height: 40),
            PressableRoundedCorner(label: 'Corner 3'),
            SizedBox(height: 40),
            PressableRoundedCorner(label: 'Corner 4'),
            SizedBox(height: 40),
            PressableRoundedCorner(label: 'Corner 5'),
          ],
        ),
      ),
    );
  }
}

class PressableRoundedCorner extends StatelessWidget {
  final String label;

  const PressableRoundedCorner({required this.label});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Add your specific action for the pressable corner here
        print('$label pressed!');
      },
      child: Container(
        width: displayWidth * 0.8,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 255, 163, 1), // Customize the corner's color
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: displayWidth * 0.05,
          ),
        ),
      ),
    );
  }
}
