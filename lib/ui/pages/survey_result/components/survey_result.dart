import 'package:flutter/material.dart';

import '../survey_result.dart';
import 'components.dart';

class SurveyResult extends StatelessWidget {
  final SurveyResultViewModel viewModel;

  SurveyResult({@required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        if (index == 0) {
          return SurveyHeader(viewModel.question);
        }
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'http://fordevs.herokuapp.com/static/img/logo-angular.png',
                    width: 40,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Angular',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Text(
                    '100%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.check_circle,
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1),
          ],
        );
      },
    );
  }
}
