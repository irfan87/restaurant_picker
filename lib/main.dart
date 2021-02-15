import 'package:flutter/material.dart';
import 'package:restaurant_picker/screens/restaurant_picker_screen.dart';

void main() {
  runApp(RestaurantPickerApp());
}

class RestaurantPickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: 'Restaurant Picker',
      home: RestaurantPickerScreen(),
    );
  }
}
