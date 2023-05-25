import 'package:flutter/material.dart';

class BSField extends StatelessWidget {
  final TextEditingController controller;
  const BSField({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500] ?? Colors.grey,
            spreadRadius: 1,
            offset: const Offset(4, 4),
            blurRadius: 15,
          ),
          const BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            offset: Offset(-4, -4),
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
        ),
      ),
    );
  }
}
