import 'package:flutter/material.dart';

showSnackBar(context, String? text) {
  final snackBar = SnackBar(
    content: Text('$text'),
    duration: Duration(seconds: 10),
    action: SnackBarAction(
      label: "Close",
      onPressed: () {;
        // Some code to undo the change.
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}