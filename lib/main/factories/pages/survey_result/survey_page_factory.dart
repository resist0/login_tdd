import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../factories.dart';
import '../../../../ui/pages/pages.dart';

Widget makeSurveyResultPage() => SurveyResultPage(
      makeGetxSurveyResultPresenter(Get.parameters['survey_id']),
    );
