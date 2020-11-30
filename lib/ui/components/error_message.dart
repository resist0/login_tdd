import 'package:flutter/material.dart';

void showErrorMessage(BuildContext context, String error) {
  Scaffold.of(context).showSnackBar(
    SnackBar(
      content: Text(error, textAlign: TextAlign.center),
      backgroundColor: Colors.red[900],
    ),
  );
}
