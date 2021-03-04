import 'package:flutter/material.dart';

void showErrorMessage(BuildContext context, String error) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(error, textAlign: TextAlign.center),
      backgroundColor: Colors.red[900],
    ),
  );
}
