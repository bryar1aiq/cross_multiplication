import 'package:flutter/material.dart';

class NumeratorDividerDenominator extends StatelessWidget {
  final TextEditingController numeratorController;
  final TextEditingController denominatorController;
  const NumeratorDividerDenominator({super.key, required this.numeratorController, required this.denominatorController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextFormField(controller: numeratorController,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              // Text color
              textAlign: TextAlign.center,
              // Center align text
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.teal.shade50,
                // Grey background color
                border: InputBorder.none, // No underline
              ),
            ),
          ),
          const Divider(
            thickness: 3,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextFormField(controller: denominatorController,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              // Text color
              textAlign: TextAlign.center,
              // Center align text
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.teal.shade50,
                // Grey background color
                border: InputBorder.none, // No underline
              ),
            ),
          ),
        ],
      ),
    );
  }
}
