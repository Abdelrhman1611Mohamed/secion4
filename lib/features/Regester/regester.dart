import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Regester/Widget.dart';

class Regester extends StatelessWidget {
  const Regester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
           Widgetee(
              name: 'NAME',
            ),
          
            SizedBox(
              height: 15,
            ),
            Widgetee(
              name: 'Age',
            ),
          
            SizedBox(
              height: 15,
            ),
            Widgetee(
              name: 'Email',
            ),
            SizedBox(
              height: 15,
            ),
            Widgetee(
              name: 'Password',
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){}, child: Text('Svav btn'))
          ],
        ),
      ),
    );
  }
}