import 'package:flutter/cupertino.dart';

import '../helpers/errors/errors.dart';
import '../components/components.dart';

mixin UIErrorManager {
  void handleMainError(BuildContext context, Stream<UIError> stream) {
    stream.listen((error) {
      if (error != null) {
        showErrorMessage(context, error.description);
      }
    });
  }
}
