import 'package:flutter/material.dart';

import '../../ui/helpers/helpers.dart';

class ReloadScreen extends StatelessWidget {
  final String error;
  final Future<void> Function() reload;

  ReloadScreen({@required this.error, @required this.reload});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            error,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: reload,
            child: Text(
              R.string.reload,
            ),
          ),
        ],
      ),
    );
  }
}
