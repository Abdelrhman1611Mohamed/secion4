import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final String name;
  const DefaultFormField(
      {super.key, required this.name, required this.controller});

  final TextEditingController controller;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style:const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
      decoration: InputDecoration(
          labelText: name,
          labelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.w900)),
    );
  }
}
