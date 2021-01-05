import 'package:test/test.dart';

import 'package:fordev/presentation/protocols/protocols.dart';

import 'package:fordev/validation/validators/validators.dart';



void main() {

  CompareFieldsValidation sut;

  setUp((){
    sut = CompareFieldsValidation(field: 'any_field', valueToCompare: 'any_value');
  });

  test('Should return error if value is not equal', () {
    final error = sut.validate('wrong_value');
    expect(error, ValidationError.invalidField);

  });


}