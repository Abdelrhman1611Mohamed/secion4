import 'package:flutter/material.dart';

class Widgetee extends StatelessWidget {
  final String name;
  const Widgetee({super.key, required this.name});

  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: name,
      ),
    );
  }
}