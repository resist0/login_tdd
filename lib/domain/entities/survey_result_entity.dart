import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import './entities.dart';

class SurveyResultEntity extends Equatable {
  final String surveyId;
  final String question;
  final bool didAnswer;
  final List<SurveyAnswerEntity> answers;

  List get props => ['surveyId', 'question', 'didAnswer', 'answers'];

  SurveyResultEntity({
    @required this.surveyId,
    @required this.question,
    @required this.didAnswer,
    @required this.answers,
  });
}
