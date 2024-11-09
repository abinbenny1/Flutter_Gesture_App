import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GesturePage extends StatelessWidget {
  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Recognition Page")),
      backgroundColor: Colors.yellow[100],
      body: Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              showToast("Single Tap Detected");
            },
            onDoubleTap: () {
              showToast("Double Tap Detected");
            },
            onHorizontalDragStart: (details) {
              showToast("Horizontal Drag Start Detected");
            },
            onHorizontalDragEnd: (details) {
              showToast("Horizontal Drag End Detected");
            },
            onVerticalDragStart: (details) {
              showToast("Vertical Drag Start Detected");
            },
            onVerticalDragEnd: (details) {
              showToast("Vertical Drag End Detected");
            },
            onLongPress: () {
              showToast("Long Press Detected");
            },
          ),
          Center(
            child: Text(
              "Interact with the page to trigger the gestures",
              style: TextStyle(fontSize: 22,backgroundColor: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
