import 'package:flutter/material.dart';

class Progressbar extends StatelessWidget {
  const Progressbar({super.key, required this.width, required this.height, required this.progress});

  final double width;
  final double height;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: width*progress,
            height: height,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 253, 36, 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('${(progress*100).toInt()}%',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
          )
        ]
      ),
    );
  }
}