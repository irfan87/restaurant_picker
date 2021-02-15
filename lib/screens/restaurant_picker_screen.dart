import 'dart:math';

import 'package:flutter/material.dart';

class RestaurantPickerScreen extends StatefulWidget {
  @override
  _RestaurantPickerScreenState createState() => _RestaurantPickerScreenState();
}

class _RestaurantPickerScreenState extends State<RestaurantPickerScreen> {
  List<String> _restaurants = [
    "mcdonalds",
    "wendy's",
    "kfc",
    "subways",
    "work n grills",
    "food panda",
    "grab food",
    "hayaki",
    "shabu shabu",
  ];

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  void _pickedRestaurant() {
    final randomString = Random();
    final restaurantIndex = randomString.nextInt(_restaurants.length);

    setState(() {
      currentIndex = restaurantIndex;
    });
  }

  void _resetPickedRestaurant() {
    setState(() {
      currentIndex = null;
    });
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Restaurant Picker',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100.0),
          Text(
            'What restaurant do you want to pick today?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 12.0),
          restaurantWidget(),
          SizedBox(height: 12.0),
          ElevatedButton(
            onPressed: _pickedRestaurant,
            child: Text('Pick your favorite restaurant'.toUpperCase()),
          ),
          SizedBox(height: 12.0),
          ElevatedButton(
            onPressed: _resetPickedRestaurant,
            child: Text('reset picker'.toUpperCase()),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }

  Widget restaurantWidget() {
    return currentIndex != null
        ? Text(
            _restaurants[currentIndex].toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          )
        : Text(
            'Pick one!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              fontSize: 16.0,
            ),
          );
  }
}
