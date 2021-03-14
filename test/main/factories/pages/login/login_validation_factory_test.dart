import 'package:test/test.dart';

import '../../../../../lib/main/factories/pages/pages.dart';
import '../../../../../lib/validation/validators/validators.dart';


void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
      MinLengthValidation(field: 'password', size: 3)
    ]);
  });
}